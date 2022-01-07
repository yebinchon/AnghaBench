; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_krb5/extr_pam_krb5.c_verify_krb_v5_tgt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_krb5/extr_pam_krb5.c_verify_krb_v5_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pam_krb5: verify_krb_v5_tgt(): %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"krb5_sname_to_principal()\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"krb5_kt_read_service_key()\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"krb5_mk_req()\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"krb5_rd_req()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @verify_krb_v5_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_krb_v5_tgt(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [3 x i8*], align 16
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* @BUFSIZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %29, align 16
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 2
  store i8* null, i8** %32, align 16
  store i32* null, i32** %12, align 8
  store i32 -1, i32* %10, align 4
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  store i8** %33, i8*** %18, align 8
  br label %34

34:                                               ; preds = %77, %4
  %35 = load i8**, i8*** %18, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i8**, i8*** %18, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %43 = call i32 @krb5_sname_to_principal(i32 %39, i32* null, i8* %41, i32 %42, i32* %11)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @krb5_get_error_message(i32 %50, i32 %51)
  store i8* %52, i8** %19, align 8
  %53 = load i32, i32* @LOG_DEBUG, align 4
  %54 = load i8*, i8** %19, align 8
  %55 = call i32 @syslog(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %19, align 8
  %58 = call i32 @krb5_free_error_message(i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %49, %46
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %167

60:                                               ; preds = %38
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @compat_princ_component(i32 %61, i32 %62, i32 1)
  %64 = load i32, i32* @BUFSIZ, align 4
  %65 = call i32 @strncpy(i8* %27, i32 %63, i32 %64)
  %66 = load i32, i32* @BUFSIZ, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %27, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @krb5_kt_read_service_key(i32 %70, i32* null, i32 %71, i32 0, i32 0, i32** %12)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %77

76:                                               ; preds = %60
  br label %80

77:                                               ; preds = %75
  %78 = load i8**, i8*** %18, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %18, align 8
  br label %34

80:                                               ; preds = %76, %34
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i8* @krb5_get_error_message(i32 %87, i32 %88)
  store i8* %89, i8** %21, align 8
  %90 = load i32, i32* @LOG_DEBUG, align 4
  %91 = load i8*, i8** %21, align 8
  %92 = call i32 @syslog(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i8*, i8** %21, align 8
  %95 = call i32 @krb5_free_error_message(i32 %93, i8* %94)
  br label %96

96:                                               ; preds = %86, %83
  store i32 0, i32* %10, align 4
  br label %155

97:                                               ; preds = %80
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @krb5_free_keyblock(i32 %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %97
  store i32* null, i32** %14, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i8**, i8*** %18, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @krb5_mk_req(i32 %105, i32** %14, i32 0, i8* %107, i8* %27, i32* null, i32 %108, %struct.TYPE_5__* %13)
  store i32 %109, i32* %10, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* %6, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @krb5_auth_con_free(i32 %113, i32* %114)
  store i32* null, i32** %14, align 8
  br label %116

116:                                              ; preds = %112, %104
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i8* @krb5_get_error_message(i32 %123, i32 %124)
  store i8* %125, i8** %22, align 8
  %126 = load i32, i32* @LOG_DEBUG, align 4
  %127 = load i8*, i8** %22, align 8
  %128 = call i32 @syslog(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i8*, i8** %22, align 8
  %131 = call i32 @krb5_free_error_message(i32 %129, i8* %130)
  br label %132

132:                                              ; preds = %122, %119
  store i32 -1, i32* %10, align 4
  br label %155

133:                                              ; preds = %116
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @krb5_rd_req(i32 %134, i32** %14, %struct.TYPE_5__* %13, i32 %135, i32* null, i32* null, i32* null)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i8* @krb5_get_error_message(i32 %143, i32 %144)
  store i8* %145, i8** %23, align 8
  %146 = load i32, i32* @LOG_DEBUG, align 4
  %147 = load i8*, i8** %23, align 8
  %148 = call i32 @syslog(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* %6, align 4
  %150 = load i8*, i8** %23, align 8
  %151 = call i32 @krb5_free_error_message(i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %142, %139
  store i32 -1, i32* %10, align 4
  br label %154

153:                                              ; preds = %133
  store i32 1, i32* %10, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %155

155:                                              ; preds = %154, %132, %96
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @compat_free_data_contents(i32 %160, %struct.TYPE_5__* %13)
  br label %162

162:                                              ; preds = %159, %155
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @krb5_free_principal(i32 %163, i32 %164)
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %167

167:                                              ; preds = %162, %59
  %168 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @krb5_sname_to_principal(i32, i32*, i8*, i32, i32*) #2

declare dso_local i8* @krb5_get_error_message(i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #2

declare dso_local i32 @krb5_free_error_message(i32, i8*) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @compat_princ_component(i32, i32, i32) #2

declare dso_local i32 @krb5_kt_read_service_key(i32, i32*, i32, i32, i32, i32**) #2

declare dso_local i32 @krb5_free_keyblock(i32, i32*) #2

declare dso_local i32 @krb5_mk_req(i32, i32**, i32, i8*, i8*, i32*, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #2

declare dso_local i32 @krb5_rd_req(i32, i32**, %struct.TYPE_5__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @compat_free_data_contents(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @krb5_free_principal(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
