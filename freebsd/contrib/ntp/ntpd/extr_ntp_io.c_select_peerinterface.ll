; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_select_peerinterface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_select_peerinterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.peer = type { i32 }

@loopback_interface = common dso_local global %struct.TYPE_8__* null, align 8
@MDF_BCLNT = common dso_local global i32 0, align 4
@MDF_ACAST = common dso_local global i32 0, align 4
@MDF_MCAST = common dso_local global i32 0, align 4
@MDF_BCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Found *-cast interface %s for address %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"No *-cast local address found for address %s\0A\00", align 1
@INT_WILDCARD = common dso_local global i32 0, align 4
@accept_wildcard_if_for_winnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @select_peerinterface(%struct.peer* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.peer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.peer* %0, %struct.peer** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_8__* @ANY_INTERFACE_CHOOSE(i32* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @ISREFCLOCKADR(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @loopback_interface, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %7, align 8
  br label %58

16:                                               ; preds = %3
  %17 = load %struct.peer*, %struct.peer** %4, align 8
  %18 = getelementptr inbounds %struct.peer, %struct.peer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MDF_BCLNT, align 4
  %21 = load i32, i32* @MDF_ACAST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MDF_MCAST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MDF_BCAST, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %19, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %16
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_8__* @findbcastinter(i32* %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = call i32 @stoa(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @stoa(i32* %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @DPRINTF(i32 4, i8* %41)
  br label %49

43:                                               ; preds = %29
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @stoa(i32* %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @DPRINTF(i32 4, i8* %47)
  br label %49

49:                                               ; preds = %43, %34
  br label %57

50:                                               ; preds = %16
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = icmp eq %struct.TYPE_8__* null, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %7, align 8
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = icmp eq %struct.TYPE_8__* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = call %struct.TYPE_8__* @findinterface(i32* %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %7, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* @INT_WILDCARD, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @accept_wildcard_if_for_winnt, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %68, %65
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %81
}

declare dso_local %struct.TYPE_8__* @ANY_INTERFACE_CHOOSE(i32*) #1

declare dso_local i64 @ISREFCLOCKADR(i32*) #1

declare dso_local %struct.TYPE_8__* @findbcastinter(i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local %struct.TYPE_8__* @findinterface(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
