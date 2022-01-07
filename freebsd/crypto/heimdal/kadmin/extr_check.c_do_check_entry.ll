; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_check.c_do_check_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_check.c_do_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, i32* }

@context = common dso_local global i32 0, align 4
@kadm_handle = common dso_local global i32 0, align 4
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get principal: %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Principal %s enctype %d, wrong length: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_check_entry(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @context, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @krb5_unparse_name(i32 %11, i32 %12, i8** %8)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 16)
  %19 = load i32, i32* @kadm_handle, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %22 = load i32, i32* @KADM5_KEY_DATA, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @kadm5_get_principal(i32 %19, i32 %20, %struct.TYPE_7__* %7, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load i32, i32* @context, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @krb5_warn(i32 %28, i64 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @free(i8* %32)
  store i32 0, i32* %3, align 4
  br label %96

34:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %88, %34
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %35
  %41 = load i32, i32* @context, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @krb5_enctype_keysize(i32 %41, i32 %50, i64* %10)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %40
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %55, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %54
  %67 = load i32, i32* @context, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = ptrtoint i64* %84 to i64
  %86 = call i32 @krb5_warnx(i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %68, i32 %77, i64 %85)
  br label %87

87:                                               ; preds = %66, %54, %40
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %35

91:                                               ; preds = %35
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* @kadm_handle, align 4
  %95 = call i32 @kadm5_free_principal_ent(i32 %94, %struct.TYPE_7__* %7)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %27, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @kadm5_get_principal(i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_enctype_keysize(i32, i32, i64*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @kadm5_free_principal_ent(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
