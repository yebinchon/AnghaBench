; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_print_tickets.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_klist.c_print_tickets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%17s: %s:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Credentials cache\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%17s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Principal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Friendly name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%17s: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Cache version\00", align 1
@KRB5_TC_NOTICKET = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"%17s: %s%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"KDC time offset\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"krb5_cc_start_seq_get\00", align 1
@COL_ISSUED = common dso_local global i32 0, align 4
@COL_EXPIRES = common dso_local global i32 0, align 4
@COL_FLAGS = common dso_local global i32 0, align 4
@COL_PRINCIPAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@KRB5_CC_END = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"krb5_cc_get_next\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"krb5_cc_end_seq_get\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @print_tickets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tickets(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %19, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @krb5_unparse_name(i32 %24, i32 %25, i8** %14)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @krb5_err(i32 %30, i32 1, i64 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %6
  %34 = call i8* @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @krb5_cc_get_type(i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @krb5_cc_get_name(i32 %38, i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %37, i8* %40)
  %42 = call i8* @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @krb5_cc_get_friendly_name(i32 %45, i32 %46, i8** %15)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %33
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i8* @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %59, %33
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = call i8* @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @krb5_cc_get_version(i32 %69, i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %68, i32 %71)
  br label %78

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @KRB5_TC_NOTICKET, align 4
  %77 = call i32 @krb5_cc_set_flags(i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %67
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @krb5_cc_get_kdc_offset(i32 %79, i32 %80, i64* %18)
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  %88 = load i64, i64* %18, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load i32, i32* @BUFSIZ, align 4
  %92 = zext i32 %91 to i64
  %93 = call i8* @llvm.stacksave()
  store i8* %93, i8** %20, align 8
  %94 = alloca i8, i64 %92, align 16
  store i64 %92, i64* %21, align 8
  %95 = load i64, i64* %18, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  store i32 -1, i32* %23, align 4
  %100 = load i32, i32* %22, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %22, align 4
  br label %102

102:                                              ; preds = %99, %90
  %103 = load i32, i32* %22, align 4
  %104 = trunc i64 %92 to i32
  %105 = call i32 @unparse_time(i32 %103, i8* %94, i32 %104)
  %106 = call i8* @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %23, align 4
  %108 = icmp eq i32 %107, -1
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %106, i8* %110, i8* %94)
  %112 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %112)
  br label %113

113:                                              ; preds = %102, %87, %84, %78
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @krb5_cc_start_seq_get(i32 %115, i32 %116, i32* %16)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @krb5_err(i32 %121, i32 1, i64 %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %124
  %128 = call i32* (...) @rtbl_create()
  store i32* %128, i32** %19, align 8
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* @COL_ISSUED, align 4
  %131 = call i32 @rtbl_add_column(i32* %129, i32 %130, i32 0)
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* @COL_EXPIRES, align 4
  %134 = call i32 @rtbl_add_column(i32* %132, i32 %133, i32 0)
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load i32*, i32** %19, align 8
  %139 = load i32, i32* @COL_FLAGS, align 4
  %140 = call i32 @rtbl_add_column(i32* %138, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %137, %127
  %142 = load i32*, i32** %19, align 8
  %143 = load i32, i32* @COL_PRINCIPAL, align 4
  %144 = call i32 @rtbl_add_column(i32* %142, i32 %143, i32 0)
  %145 = load i32*, i32** %19, align 8
  %146 = call i32 @rtbl_set_separator(i32* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %147

147:                                              ; preds = %141, %124
  br label %148

148:                                              ; preds = %175, %147
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i64 @krb5_cc_next_cred(i32 %149, i32 %150, i32* %16, %struct.TYPE_6__* %17)
  store i64 %151, i64* %13, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %148
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @krb5_is_config_principal(i32 %157, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %175

163:                                              ; preds = %156, %153
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @print_cred_verbose(i32 %167, %struct.TYPE_6__* %17)
  br label %174

169:                                              ; preds = %163
  %170 = load i32, i32* %7, align 4
  %171 = load i32*, i32** %19, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @print_cred(i32 %170, %struct.TYPE_6__* %17, i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %169, %166
  br label %175

175:                                              ; preds = %174, %162
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @krb5_free_cred_contents(i32 %176, %struct.TYPE_6__* %17)
  br label %148

178:                                              ; preds = %148
  %179 = load i64, i64* %13, align 8
  %180 = load i64, i64* @KRB5_CC_END, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = load i64, i64* %13, align 8
  %185 = call i32 @krb5_err(i32 %183, i32 1, i64 %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i64 @krb5_cc_end_seq_get(i32 %187, i32 %188, i32* %16)
  store i64 %189, i64* %13, align 8
  %190 = load i64, i64* %13, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i32, i32* %7, align 4
  %194 = load i64, i64* %13, align 8
  %195 = call i32 @krb5_err(i32 %193, i32 1, i64 %194, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192, %186
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %196
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* @stdout, align 4
  %202 = call i32 @rtbl_format(i32* %200, i32 %201)
  %203 = load i32*, i32** %19, align 8
  %204 = call i32 @rtbl_destroy(i32* %203)
  br label %205

205:                                              ; preds = %199, %196
  ret void
}

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @N_(i8*, i8*) #1

declare dso_local i8* @krb5_cc_get_type(i32, i32) #1

declare dso_local i8* @krb5_cc_get_name(i32, i32) #1

declare dso_local i64 @krb5_cc_get_friendly_name(i32, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_cc_get_version(i32, i32) #1

declare dso_local i32 @krb5_cc_set_flags(i32, i32, i32) #1

declare dso_local i64 @krb5_cc_get_kdc_offset(i32, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @unparse_time(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @krb5_cc_start_seq_get(i32, i32, i32*) #1

declare dso_local i32* @rtbl_create(...) #1

declare dso_local i32 @rtbl_add_column(i32*, i32, i32) #1

declare dso_local i32 @rtbl_set_separator(i32*, i8*) #1

declare dso_local i64 @krb5_cc_next_cred(i32, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @krb5_is_config_principal(i32, i32) #1

declare dso_local i32 @print_cred_verbose(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @print_cred(i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @krb5_cc_end_seq_get(i32, i32, i32*) #1

declare dso_local i32 @rtbl_format(i32*, i32) #1

declare dso_local i32 @rtbl_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
