; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_change.c_change_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_change.c_change_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KADM5_CONFIG_ADMIN_SERVER = common dso_local global i32 0, align 4
@KADM5_CONFIG_KADMIND_PORT = common dso_local global i32 0, align 4
@keytab_string = common dso_local global i32 0, align 4
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"kadm5_c_init_with_skey_ctx: %s:\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"kadm5_randkey_principal: %s:\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"krb5_kt_add_entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i8*, i8*, i32)* @change_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_entry(i32 %0, i32 %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* @context, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @krb5_unparse_name(i32 %22, i32 %23, i8** %17)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* @context, align 4
  %29 = load i64, i64* %14, align 8
  %30 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %28, i64 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %14, align 8
  store i64 %31, i64* %7, align 8
  br label %174

32:                                               ; preds = %6
  %33 = call i32 @memset(%struct.TYPE_7__* %15, i32 0, i32 24)
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @context, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @krb5_principal_get_realm(i32 %37, i32 %38)
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** %11, align 8
  %42 = call i8* @strdup(i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* @context, align 4
  %51 = load i64, i64* @ENOMEM, align 8
  %52 = call i32 @krb5_set_error_message(i32 %50, i64 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* @ENOMEM, align 8
  store i64 %53, i64* %7, align 8
  br label %174

54:                                               ; preds = %40
  %55 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %54
  %62 = load i8*, i8** %12, align 8
  %63 = call i8* @strdup(i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load i8*, i8** %17, align 8
  %70 = call i32 @free(i8* %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* @context, align 4
  %75 = load i64, i64* @ENOMEM, align 8
  %76 = call i32 @krb5_set_error_message(i32 %74, i64 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i64, i64* @ENOMEM, align 8
  store i64 %77, i64* %7, align 8
  br label %174

78:                                               ; preds = %61
  %79 = load i32, i32* @KADM5_CONFIG_ADMIN_SERVER, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %54
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @htons(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @KADM5_CONFIG_KADMIND_PORT, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %86, %83
  %95 = load i32, i32* @context, align 4
  %96 = load i8*, i8** %17, align 8
  %97 = load i32, i32* @keytab_string, align 4
  %98 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %99 = call i64 @kadm5_init_with_skey_ctx(i32 %95, i8* %96, i32 %97, i32 %98, %struct.TYPE_7__* %15, i32 0, i32 0, i8** %16)
  store i64 %99, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @free(i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load i32, i32* @context, align 4
  %110 = load i64, i64* %14, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %109, i64 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i64, i64* %14, align 8
  store i64 %115, i64* %7, align 8
  br label %174

116:                                              ; preds = %94
  %117 = load i8*, i8** %16, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @kadm5_randkey_principal(i8* %117, i32 %118, i32** %18, i32* %19)
  store i64 %119, i64* %14, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 @kadm5_destroy(i8* %120)
  %122 = load i64, i64* %14, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load i32, i32* @context, align 4
  %126 = load i64, i64* %14, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %125, i64 %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i64, i64* %14, align 8
  store i64 %131, i64* %7, align 8
  br label %174

132:                                              ; preds = %116
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @free(i8* %133)
  store i32 0, i32* %20, align 4
  br label %135

135:                                              ; preds = %169, %132
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %172

139:                                              ; preds = %135
  %140 = load i32, i32* %9, align 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 %140, i32* %141, align 4
  %142 = call i32 @time(i32* null)
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %142, i32* %143, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %144, 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i64 %145, i64* %146, align 8
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @context, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i64 @krb5_kt_add_entry(i32 %153, i32 %154, %struct.TYPE_6__* %21)
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %139
  %159 = load i32, i32* @context, align 4
  %160 = load i64, i64* %14, align 8
  %161 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %159, i64 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %139
  %163 = load i32, i32* @context, align 4
  %164 = load i32*, i32** %18, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i32 @krb5_free_keyblock_contents(i32 %163, i32* %167)
  br label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %135

172:                                              ; preds = %135
  %173 = load i64, i64* %14, align 8
  store i64 %173, i64* %7, align 8
  br label %174

174:                                              ; preds = %172, %124, %108, %68, %47, %27
  %175 = load i64, i64* %7, align 8
  ret i64 %175
}

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @krb5_principal_get_realm(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @kadm5_init_with_skey_ctx(i32, i8*, i32, i32, %struct.TYPE_7__*, i32, i32, i8**) #1

declare dso_local i64 @kadm5_randkey_principal(i8*, i32, i32**, i32*) #1

declare dso_local i32 @kadm5_destroy(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @krb5_kt_add_entry(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
