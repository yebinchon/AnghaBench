; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdestroy.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdestroy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@all_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"krb5_cccol_cursor_new\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"krb5_cc_destroy\00", align 1
@cache = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"krb5_cc_default\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"krb5_cc_resolve\00", align 1
@credential = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Can't parse principal %s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to remove principal %s\00", align 1
@unlog_flag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @setprogname(i8* %15)
  %17 = load i32, i32* @args, align 4
  %18 = load i32, i32* @num_args, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i64 @getarg(i32 %17, i32 %18, i32 %19, i8** %20, i32* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @usage(i32 1)
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i64, i64* @help_flag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @usage(i32 0)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i64, i64* @version_flag, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 @print_version(i32* null)
  %35 = call i32 @exit(i32 0) #3
  unreachable

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 @usage(i32 1)
  br label %48

48:                                               ; preds = %46, %36
  %49 = call i64 @krb5_init_context(i32* %7)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i64, i64* @all_flag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @krb5_cccol_cursor_new(i32 %59, i32* %11)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %64, i32 1, i64 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @krb5_cccol_cursor_next(i32 %69, i32 %70, i32** %8)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i1 [ false, %68 ], [ %75, %73 ]
  br i1 %77, label %78, label %89

78:                                               ; preds = %76
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i64 @krb5_cc_destroy(i32 %79, i32* %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @krb5_warn(i32 %85, i64 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %78
  br label %68

89:                                               ; preds = %76
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @krb5_cccol_cursor_free(i32 %90, i32* %11)
  br label %168

92:                                               ; preds = %55
  %93 = load i32*, i32** @cache, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @krb5_cc_default(i32 %96, i32** %8)
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %101, i32 1, i64 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %95
  br label %116

105:                                              ; preds = %92
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** @cache, align 8
  %108 = call i64 @krb5_cc_resolve(i32 %106, i32* %107, i32** %8)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = load i64, i64* %6, align 8
  %114 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %112, i32 1, i64 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %104
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %167

119:                                              ; preds = %116
  %120 = load i64, i64* @credential, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %119
  %123 = call i32 @krb5_cc_clear_mcred(%struct.TYPE_4__* %12)
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* @credential, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %127 = call i64 @krb5_parse_name(i32 %124, i64 %125, i32* %126)
  store i64 %127, i64* %6, align 8
  %128 = load i64, i64* %6, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i32, i32* %7, align 4
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @credential, align 8
  %134 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %131, i32 1, i64 %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %130, %122
  %136 = load i32, i32* %7, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = call i64 @krb5_cc_remove_cred(i32 %136, i32* %137, i32 0, %struct.TYPE_4__* %12)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i32, i32* %7, align 4
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @credential, align 8
  %145 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %142, i32 1, i64 %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %141, %135
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @krb5_cc_close(i32 %147, i32* %148)
  %150 = load i32, i32* %7, align 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @krb5_free_principal(i32 %150, i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @krb5_free_context(i32 %154)
  store i32 0, i32* %3, align 4
  br label %183

156:                                              ; preds = %119
  %157 = load i32, i32* %7, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = call i64 @krb5_cc_destroy(i32 %157, i32* %158)
  store i64 %159, i64* %6, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @krb5_warn(i32 %163, i64 %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %166

166:                                              ; preds = %162, %156
  br label %167

167:                                              ; preds = %166, %116
  br label %168

168:                                              ; preds = %167, %89
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @krb5_free_context(i32 %169)
  %171 = load i64, i64* @unlog_flag, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = call i64 (...) @k_hasafs()
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = call i64 (...) @k_unlog()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 1, i32* %10, align 4
  br label %180

180:                                              ; preds = %179, %176
  br label %181

181:                                              ; preds = %180, %173, %168
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %146
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i64 @krb5_cccol_cursor_new(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_cccol_cursor_next(i32, i32, i32**) #1

declare dso_local i64 @krb5_cc_destroy(i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_cccol_cursor_free(i32, i32*) #1

declare dso_local i64 @krb5_cc_default(i32, i32**) #1

declare dso_local i64 @krb5_cc_resolve(i32, i32*, i32**) #1

declare dso_local i32 @krb5_cc_clear_mcred(%struct.TYPE_4__*) #1

declare dso_local i64 @krb5_parse_name(i32, i64, i32*) #1

declare dso_local i64 @krb5_cc_remove_cred(i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

declare dso_local i64 @k_hasafs(...) #1

declare dso_local i64 @k_unlog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
