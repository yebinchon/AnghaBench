; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_purge.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_purge.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e = type { i32, %struct.e*, i8*, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"krb5_copy_principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, %struct.e**)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_entry(i32 %0, i32 %1, i8* %2, %struct.e** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.e**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.e*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.e** %3, %struct.e*** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.e**, %struct.e*** %8, align 8
  %13 = load %struct.e*, %struct.e** %12, align 8
  %14 = call %struct.e* @get_entry(i32 %11, %struct.e* %13)
  store %struct.e* %14, %struct.e** %10, align 8
  %15 = load %struct.e*, %struct.e** %10, align 8
  %16 = icmp ne %struct.e* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.e*, %struct.e** %10, align 8
  %19 = getelementptr inbounds %struct.e, %struct.e* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.e*, %struct.e** %10, align 8
  %26 = getelementptr inbounds %struct.e, %struct.e* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.e*, %struct.e** %10, align 8
  %29 = getelementptr inbounds %struct.e, %struct.e* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %17
  br label %63

31:                                               ; preds = %4
  %32 = call %struct.e* @malloc(i32 32)
  store %struct.e* %32, %struct.e** %10, align 8
  %33 = load %struct.e*, %struct.e** %10, align 8
  %34 = icmp eq %struct.e* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @context, align 4
  %37 = call i32 @krb5_errx(i32 %36, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @context, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.e*, %struct.e** %10, align 8
  %42 = getelementptr inbounds %struct.e, %struct.e* %41, i32 0, i32 3
  %43 = call i64 @krb5_copy_principal(i32 %39, i32 %40, i32* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @context, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @krb5_err(i32 %47, i32 1, i64 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.e*, %struct.e** %10, align 8
  %53 = getelementptr inbounds %struct.e, %struct.e* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.e*, %struct.e** %10, align 8
  %56 = getelementptr inbounds %struct.e, %struct.e* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.e**, %struct.e*** %8, align 8
  %58 = load %struct.e*, %struct.e** %57, align 8
  %59 = load %struct.e*, %struct.e** %10, align 8
  %60 = getelementptr inbounds %struct.e, %struct.e* %59, i32 0, i32 1
  store %struct.e* %58, %struct.e** %60, align 8
  %61 = load %struct.e*, %struct.e** %10, align 8
  %62 = load %struct.e**, %struct.e*** %8, align 8
  store %struct.e* %61, %struct.e** %62, align 8
  br label %63

63:                                               ; preds = %50, %30
  ret void
}

declare dso_local %struct.e* @get_entry(i32, %struct.e*) #1

declare dso_local %struct.e* @malloc(i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i64 @krb5_copy_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
