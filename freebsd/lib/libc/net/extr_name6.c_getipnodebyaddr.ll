; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c_getipnodebyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c_getipnodebyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.in_addr = type { i32 }

@NO_RECOVERY = common dso_local global i32 0, align 4
@RES_INIT = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@RES_USE_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @getipnodebyaddr(i8* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %39 [
    i32 129, label %15
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @NO_RECOVERY, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %87

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = call i32 @rounddown2(i64 %23, i32 4)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @memcpy(%struct.in_addr* %13, i8* %27, i64 %28)
  %30 = bitcast %struct.in_addr* %13 to i8*
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.in_addr*
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %87

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @NO_RECOVERY, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %87

42:                                               ; preds = %38
  %43 = call %struct.TYPE_5__* (...) @__res_state()
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RES_INIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = call i64 @res_ninit(%struct.TYPE_5__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = load i32, i32* @NETDB_INTERNAL, align 4
  %57 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_5__* %55, i32 %56)
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %87

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @RES_USE_INET6, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.hostent* @gethostbyaddr(i8* %69, i64 %70, i32 %71)
  store %struct.hostent* %72, %struct.hostent** %10, align 8
  %73 = load %struct.hostent*, %struct.hostent** %10, align 8
  %74 = icmp eq %struct.hostent* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %59
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %59
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.hostent*, %struct.hostent** %10, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call %struct.hostent* @_hpcopy(%struct.hostent* %84, i32* %85)
  store %struct.hostent* %86, %struct.hostent** %5, align 8
  br label %87

87:                                               ; preds = %80, %54, %39, %37, %18
  %88 = load %struct.hostent*, %struct.hostent** %5, align 8
  ret %struct.hostent* %88
}

declare dso_local i32 @rounddown2(i64, i32) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i8*, i64) #1

declare dso_local %struct.TYPE_5__* @__res_state(...) #1

declare dso_local i64 @res_ninit(%struct.TYPE_5__*) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i64, i32) #1

declare dso_local %struct.hostent* @_hpcopy(%struct.hostent*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
