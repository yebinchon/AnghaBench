; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_fsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"no memory!\0A\00", align 1
@SESS_INITIALLOGIN = common dso_local global i32 0, align 4
@SESS_INITIALLOGIN1 = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsm(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %6 = call %struct.TYPE_13__* @calloc(i32 1, i32 32)
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %5, align 8
  %7 = icmp eq %struct.TYPE_13__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %96

11:                                               ; preds = %1
  store i32 149, i32* %4, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strdup(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @SESS_INITIALLOGIN, align 4
  %39 = load i32, i32* @SESS_INITIALLOGIN1, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %95, %11
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %94 [
    i32 149, label %45
    i32 148, label %51
    i32 147, label %58
    i32 146, label %65
    i32 145, label %74
    i32 144, label %82
    i32 143, label %91
  ]

45:                                               ; preds = %43
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = call i32 @tcpConnect(%struct.TYPE_13__* %46)
  switch i32 %47, label %49 [
    i32 142, label %48
  ]

48:                                               ; preds = %45
  store i32 148, i32* %4, align 4
  br label %50

49:                                               ; preds = %45
  store i32 143, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %94

51:                                               ; preds = %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = call i32 @startSession(%struct.TYPE_13__* %52)
  switch i32 %53, label %56 [
    i32 133, label %54
    i32 132, label %55
  ]

54:                                               ; preds = %51
  store i32 149, i32* %4, align 4
  br label %57

55:                                               ; preds = %51
  store i32 147, i32* %4, align 4
  br label %57

56:                                               ; preds = %51
  store i32 143, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %54
  br label %94

58:                                               ; preds = %43
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call i32 @doLogin(%struct.TYPE_13__* %59)
  switch i32 %60, label %63 [
    i32 130, label %61
    i32 131, label %62
  ]

61:                                               ; preds = %58
  store i32 149, i32* %4, align 4
  br label %64

62:                                               ; preds = %58
  store i32 146, i32* %4, align 4
  br label %64

63:                                               ; preds = %58
  store i32 143, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %61
  br label %94

65:                                               ; preds = %43
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = call i32 @supervise(%struct.TYPE_13__* %66)
  switch i32 %67, label %72 [
    i32 129, label %68
    i32 128, label %69
    i32 140, label %70
    i32 136, label %71
  ]

68:                                               ; preds = %65
  store i32 149, i32* %4, align 4
  br label %73

69:                                               ; preds = %65
  store i32 145, i32* %4, align 4
  br label %73

70:                                               ; preds = %65
  store i32 144, i32* %4, align 4
  br label %73

71:                                               ; preds = %65
  store i32 143, i32* %4, align 4
  br label %73

72:                                               ; preds = %65
  store i32 143, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %71, %70, %69, %68
  br label %94

74:                                               ; preds = %43
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = call i32 @startLogout(%struct.TYPE_13__* %75)
  switch i32 %76, label %80 [
    i32 138, label %77
    i32 137, label %78
    i32 135, label %79
  ]

77:                                               ; preds = %74
  store i32 149, i32* %4, align 4
  br label %81

78:                                               ; preds = %74
  store i32 145, i32* %4, align 4
  br label %81

79:                                               ; preds = %74
  store i32 143, i32* %4, align 4
  br label %81

80:                                               ; preds = %74
  store i32 143, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %78, %77
  br label %94

82:                                               ; preds = %43
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = call i32 @inLogout(%struct.TYPE_13__* %83)
  switch i32 %84, label %89 [
    i32 134, label %85
    i32 141, label %86
    i32 139, label %87
    i32 135, label %88
  ]

85:                                               ; preds = %82
  store i32 149, i32* %4, align 4
  br label %90

86:                                               ; preds = %82
  store i32 145, i32* %4, align 4
  br label %90

87:                                               ; preds = %82
  store i32 144, i32* %4, align 4
  br label %90

88:                                               ; preds = %82
  store i32 143, i32* %4, align 4
  br label %90

89:                                               ; preds = %82
  store i32 143, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %88, %87, %86, %85
  br label %94

91:                                               ; preds = %43
  %92 = load i32, i32* @LOG_INFO, align 4
  %93 = call i32 @syslog(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %96

94:                                               ; preds = %43, %90, %81, %73, %64, %57, %50
  br label %95

95:                                               ; preds = %94
  br i1 true, label %43, label %96

96:                                               ; preds = %8, %91, %95
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @tcpConnect(%struct.TYPE_13__*) #1

declare dso_local i32 @startSession(%struct.TYPE_13__*) #1

declare dso_local i32 @doLogin(%struct.TYPE_13__*) #1

declare dso_local i32 @supervise(%struct.TYPE_13__*) #1

declare dso_local i32 @startLogout(%struct.TYPE_13__*) #1

declare dso_local i32 @inLogout(%struct.TYPE_13__*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
