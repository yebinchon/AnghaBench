; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_destroy.c_kt_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_destroy.c_kt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"destroy keytab failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kt_destroy(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = call i32* (...) @ktutil_open_keytab()
  store i32* %10, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %24

13:                                               ; preds = %3
  %14 = load i32, i32* @context, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @krb5_kt_destroy(i32 %14, i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @context, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @krb5_warn(i32 %20, i64 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %19, %12
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32* @ktutil_open_keytab(...) #1

declare dso_local i64 @krb5_kt_destroy(i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
