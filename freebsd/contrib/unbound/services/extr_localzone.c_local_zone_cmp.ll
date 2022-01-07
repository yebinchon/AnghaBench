; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_zone_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.local_zone*, align 8
  %7 = alloca %struct.local_zone*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.local_zone*
  store %struct.local_zone* %10, %struct.local_zone** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.local_zone*
  store %struct.local_zone* %12, %struct.local_zone** %7, align 8
  %13 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %14 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %17 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %22 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %25 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %44

29:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %32 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %35 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %38 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %41 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dname_lab_cmp(i32 %33, i32 %36, i32 %39, i32 %42, i32* %8)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %29, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dname_lab_cmp(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
