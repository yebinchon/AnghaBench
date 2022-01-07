; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.hostdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @gethostbyname2(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostdata*, align 8
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.hostdata* (...) @__hostdata_init()
  store %struct.hostdata* %9, %struct.hostdata** %6, align 8
  %10 = icmp eq %struct.hostdata* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.hostent* null, %struct.hostent** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hostdata*, %struct.hostdata** %6, align 8
  %16 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %15, i32 0, i32 1
  %17 = load %struct.hostdata*, %struct.hostdata** %6, align 8
  %18 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @gethostbyname2_r(i8* %13, i32 %14, i32* %16, i32 %19, i32 4, %struct.hostent** %7, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store %struct.hostent* null, %struct.hostent** %3, align 8
  br label %25

23:                                               ; preds = %12
  %24 = load %struct.hostent*, %struct.hostent** %7, align 8
  store %struct.hostent* %24, %struct.hostent** %3, align 8
  br label %25

25:                                               ; preds = %23, %22, %11
  %26 = load %struct.hostent*, %struct.hostent** %3, align 8
  ret %struct.hostent* %26
}

declare dso_local %struct.hostdata* @__hostdata_init(...) #1

declare dso_local i64 @gethostbyname2_r(i8*, i32, i32*, i32, i32, %struct.hostent**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
