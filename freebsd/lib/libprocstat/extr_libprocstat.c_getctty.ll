; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_getctty.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_getctty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.kinfo_proc = type { i32, i32* }
%struct.pgrp = type { %struct.vnode*, i32*, i32* }
%struct.proc = type { %struct.vnode*, i32*, i32* }
%struct.session = type { %struct.vnode*, i32*, i32* }

@.str = private unnamed_addr constant [40 x i8] c"can't read proc struct at %p for pid %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"can't read pgrp struct at %p for pid %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"can't read session struct at %p for pid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vnode* (i32*, %struct.kinfo_proc*)* @getctty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vnode* @getctty(i32* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca %struct.pgrp, align 8
  %7 = alloca %struct.proc, align 8
  %8 = alloca %struct.session, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %5, align 8
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %11 = call i32 @assert(%struct.kinfo_proc* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %14 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = bitcast %struct.proc* %7 to %struct.session*
  %18 = call i32 @kvm_read_all(i32* %12, i64 %16, %struct.session* %17, i32 24)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %23 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %26 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %24, i32 %27)
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %68

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %68

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = bitcast %struct.pgrp* %6 to %struct.session*
  %40 = call i32 @kvm_read_all(i32* %35, i64 %38, %struct.session* %39, i32 24)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %47 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* %45, i32 %48)
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %68

50:                                               ; preds = %34
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %6, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = call i32 @kvm_read_all(i32* %51, i64 %54, %struct.session* %8, i32 24)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %6, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %62 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32* %60, i32 %63)
  store %struct.vnode* null, %struct.vnode** %3, align 8
  br label %68

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.session, %struct.session* %8, i32 0, i32 0
  %67 = load %struct.vnode*, %struct.vnode** %66, align 8
  store %struct.vnode* %67, %struct.vnode** %3, align 8
  br label %68

68:                                               ; preds = %65, %58, %43, %33, %21
  %69 = load %struct.vnode*, %struct.vnode** %3, align 8
  ret %struct.vnode* %69
}

declare dso_local i32 @assert(%struct.kinfo_proc*) #1

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.session*, i32) #1

declare dso_local i32 @warnx(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
