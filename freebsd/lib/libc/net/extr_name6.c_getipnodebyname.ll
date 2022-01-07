; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c_getipnodebyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_name6.c_getipnodebyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%union.inx_addr = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.in_addr = type { i32 }

@NO_RECOVERY = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@RES_INIT = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@RES_USE_INET6 = common dso_local global i32 0, align 4
@AI_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @getipnodebyname(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca %union.inx_addr, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %17 [
    i32 129, label %16
  ]

16:                                               ; preds = %4
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @NO_RECOVERY, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %106

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AI_ADDRCONFIG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = load i32, i32* @SOCK_CLOEXEC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @_socket(i32 %26, i32 %29, i32 0)
  store i32 %30, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %106

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @_close(i32 %34)
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast %union.inx_addr* %11 to %struct.in_addr*
  %39 = call i32 @inet_aton(i8* %37, %struct.in_addr* %38)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 129
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @MAPADDRENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = bitcast %union.inx_addr* %11 to i32*
  %50 = call i32 @MAPADDR(%union.inx_addr* %11, i32* %49)
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @HOST_NOT_FOUND, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %106

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call %struct.hostent* @_hpaddr(i32 %56, i8* %57, %union.inx_addr* %11, i32* %58)
  store %struct.hostent* %59, %struct.hostent** %5, align 8
  br label %106

60:                                               ; preds = %36
  %61 = call %struct.TYPE_5__* (...) @__res_state()
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %12, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RES_INIT, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = call i64 @res_ninit(%struct.TYPE_5__* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @NETDB_INTERNAL, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  store %struct.hostent* null, %struct.hostent** %5, align 8
  br label %106

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @RES_USE_INET6, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call %struct.hostent* @gethostbyname2(i8* %86, i32 %87)
  store %struct.hostent* %88, %struct.hostent** %10, align 8
  %89 = load %struct.hostent*, %struct.hostent** %10, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call %struct.hostent* @_hpcopy(%struct.hostent* %89, i32* %90)
  store %struct.hostent* %91, %struct.hostent** %10, align 8
  %92 = load %struct.hostent*, %struct.hostent** %10, align 8
  %93 = icmp eq %struct.hostent* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %76
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.hostent*, %struct.hostent** %10, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = call %struct.hostent* @_hpsort(%struct.hostent* %103, %struct.TYPE_5__* %104)
  store %struct.hostent* %105, %struct.hostent** %5, align 8
  br label %106

106:                                              ; preds = %99, %72, %55, %51, %32, %17
  %107 = load %struct.hostent*, %struct.hostent** %5, align 8
  ret %struct.hostent* %107
}

declare dso_local i32 @_socket(i32, i32, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i64 @MAPADDRENABLED(i32) #1

declare dso_local i32 @MAPADDR(%union.inx_addr*, i32*) #1

declare dso_local %struct.hostent* @_hpaddr(i32, i8*, %union.inx_addr*, i32*) #1

declare dso_local %struct.TYPE_5__* @__res_state(...) #1

declare dso_local i64 @res_ninit(%struct.TYPE_5__*) #1

declare dso_local %struct.hostent* @gethostbyname2(i8*, i32) #1

declare dso_local %struct.hostent* @_hpcopy(%struct.hostent*, i32*) #1

declare dso_local %struct.hostent* @_hpsort(%struct.hostent*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
