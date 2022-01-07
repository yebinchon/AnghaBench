; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.hostdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @gethostbyname(i8* %0) #0 {
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hostdata*, align 8
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call %struct.hostdata* (...) @__hostdata_init()
  store %struct.hostdata* %7, %struct.hostdata** %4, align 8
  %8 = icmp eq %struct.hostdata* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %13 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %12, i32 0, i32 1
  %14 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %15 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @gethostbyname_r(i8* %11, i32* %13, i32 %16, i32 4, %struct.hostent** %5, i32* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %22

20:                                               ; preds = %10
  %21 = load %struct.hostent*, %struct.hostent** %5, align 8
  store %struct.hostent* %21, %struct.hostent** %2, align 8
  br label %22

22:                                               ; preds = %20, %19, %9
  %23 = load %struct.hostent*, %struct.hostent** %2, align 8
  ret %struct.hostent* %23
}

declare dso_local %struct.hostdata* @__hostdata_init(...) #1

declare dso_local i64 @gethostbyname_r(i8*, i32*, i32, i32, %struct.hostent**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
