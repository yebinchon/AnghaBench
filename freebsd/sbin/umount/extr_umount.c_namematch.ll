; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_namematch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_namematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32 }

@nfshost = common dso_local global i32* null, align 8
@nfshost_ai = common dso_local global %struct.addrinfo* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @namematch(%struct.addrinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  %5 = load i32*, i32** @nfshost, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.addrinfo*, %struct.addrinfo** @nfshost_ai, align 8
  %9 = icmp eq %struct.addrinfo* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32 1, i32* %2, align 4
  br label %39

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %34, %11
  %13 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %14 = icmp ne %struct.addrinfo* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.addrinfo*, %struct.addrinfo** @nfshost_ai, align 8
  store %struct.addrinfo* %16, %struct.addrinfo** %4, align 8
  br label %17

17:                                               ; preds = %30, %15
  %18 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %19 = icmp ne %struct.addrinfo* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @sacmp(i32 %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  store %struct.addrinfo* %33, %struct.addrinfo** %4, align 8
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 0
  %37 = load %struct.addrinfo*, %struct.addrinfo** %36, align 8
  store %struct.addrinfo* %37, %struct.addrinfo** %3, align 8
  br label %12

38:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %29, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @sacmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
