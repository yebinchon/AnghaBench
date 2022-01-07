; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_oid.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_oid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gss_oid_to_str failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"1 2 840 113554 1 2 2\00", align 1
@GSS_C_NT_EXPORT_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"1 3 6 1 5 6 4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %11 = call i32 @gss_oid_to_str(i32* %6, i32 %10, %struct.TYPE_4__* %8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @GSS_ERROR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strncmp(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_4__* %8)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %46

27:                                               ; preds = %17
  %28 = load i32, i32* @GSS_C_NT_EXPORT_NAME, align 4
  %29 = call i32 @gss_oid_to_str(i32* %6, i32 %28, %struct.TYPE_4__* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @GSS_ERROR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strncmp(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = call i32 @gss_release_buffer(i32* %7, %struct.TYPE_4__* %8)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @gss_oid_to_str(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
