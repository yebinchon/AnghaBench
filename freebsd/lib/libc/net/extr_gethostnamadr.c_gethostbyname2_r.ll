; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname2_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c_gethostbyname2_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RES_INIT = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gethostbyname2_r(i8* %0, i32 %1, %struct.hostent* %2, i8* %3, i64 %4, %struct.hostent** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hostent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hostent**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.hostent* %2, %struct.hostent** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.hostent** %5, %struct.hostent*** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = call %struct.TYPE_6__* (...) @__res_state()
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RES_INIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %7
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %26 = call i32 @res_ninit(%struct.TYPE_6__* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %30 = load i32, i32* @NETDB_INTERNAL, align 4
  %31 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_6__* %29, i32 %30)
  store i32 -1, i32* %8, align 4
  br label %42

32:                                               ; preds = %24, %7
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.hostent*, %struct.hostent** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.hostent**, %struct.hostent*** %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %41 = call i32 @gethostbyname_internal(i8* %33, i32 %34, %struct.hostent* %35, i8* %36, i64 %37, %struct.hostent** %38, i32* %39, %struct.TYPE_6__* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %32, %28
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @__res_state(...) #1

declare dso_local i32 @res_ninit(%struct.TYPE_6__*) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gethostbyname_internal(i8*, i32, %struct.hostent*, i8*, i64, %struct.hostent**, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
