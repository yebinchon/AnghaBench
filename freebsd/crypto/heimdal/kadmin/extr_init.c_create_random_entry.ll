; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_init.c_create_random_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_init.c_create_random_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to unparse principal name\00", align 1
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KRB5_KDB_DISALLOW_ALL_TIX = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@kadm_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"create_random_entry(%s): randkey failed\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"create_random_entry(%s): unable to get principal\00", align 1
@KADM5_KVNO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"create_random_entry(%s): unable to modify principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32)* @create_random_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_random_entry(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [512 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 0
  %20 = call i32 @random_password(i8* %19, i32 512)
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i64 0, i64 0
  store i8* %21, i8** %17, align 8
  %22 = load i32, i32* @context, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @krb5_unparse_name(i32 %22, i32 %23, i8** %16)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @context, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %28, i64 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %5, align 8
  br label %145

32:                                               ; preds = %4
  %33 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 20)
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %41, %32
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @KRB5_KDB_DISALLOW_ALL_TIX, align 4
  %59 = or i32 %57, %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @kadm_handle, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i8*, i8** %17, align 8
  %69 = call i64 @kadm5_create_principal(i32 %66, %struct.TYPE_7__* %10, i32 %67, i8* %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32, i32* @context, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %73, i64 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %141

77:                                               ; preds = %56
  %78 = load i32, i32* @kadm_handle, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @kadm5_randkey_principal(i32 %78, i32 %79, i8** %13, i32* %14)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32, i32* @context, align 4
  %85 = load i64, i64* %11, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %84, i64 %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %141

88:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* @context, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 @krb5_free_keyblock_contents(i32 %94, i8* %98)
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %89

103:                                              ; preds = %89
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* @kadm_handle, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %109 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %110 = or i32 %108, %109
  %111 = call i64 @kadm5_get_principal(i32 %106, i32 %107, %struct.TYPE_7__* %10, i32 %110)
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %103
  %115 = load i32, i32* @context, align 4
  %116 = load i64, i64* %11, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %115, i64 %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  br label %141

119:                                              ; preds = %103
  %120 = load i32, i32* @KRB5_KDB_DISALLOW_ALL_TIX, align 4
  %121 = xor i32 %120, -1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %121
  store i32 %124, i32* %122, align 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* @kadm_handle, align 4
  %127 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %128 = load i32, i32* @KADM5_KVNO, align 4
  %129 = or i32 %127, %128
  %130 = call i64 @kadm5_modify_principal(i32 %126, %struct.TYPE_7__* %10, i32 %129)
  store i64 %130, i64* %11, align 8
  %131 = load i32, i32* @kadm_handle, align 4
  %132 = call i32 @kadm5_free_principal_ent(i32 %131, %struct.TYPE_7__* %10)
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %119
  %136 = load i32, i32* @context, align 4
  %137 = load i64, i64* %11, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %136, i64 %137, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  br label %141

140:                                              ; preds = %119
  br label %141

141:                                              ; preds = %140, %135, %114, %83, %72
  %142 = load i8*, i8** %16, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i64, i64* %11, align 8
  store i64 %144, i64* %5, align 8
  br label %145

145:                                              ; preds = %141, %27
  %146 = load i64, i64* %5, align 8
  ret i64 %146
}

declare dso_local i32 @random_password(i8*, i32) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @kadm5_create_principal(i32, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64 @kadm5_randkey_principal(i32, i32, i8**, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @kadm5_get_principal(i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @kadm5_modify_principal(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @kadm5_free_principal_ent(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
