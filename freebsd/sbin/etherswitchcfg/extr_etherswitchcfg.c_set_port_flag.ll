; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"striptag\00", align 1
@ETHERSWITCH_PORT_STRIPTAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"addtag\00", align 1
@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"firstlock\00", align 1
@ETHERSWITCH_PORT_FIRSTLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"droptagged\00", align 1
@ETHERSWITCH_PORT_DROPTAGGED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"dropuntagged\00", align 1
@ETHERSWITCH_PORT_DROPUNTAGGED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"doubletag\00", align 1
@ETHERSWITCH_PORT_DOUBLE_TAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ingress\00", align 1
@ETHERSWITCH_PORT_INGRESS = common dso_local global i32 0, align 4
@IOETHERSWITCHGETPORT = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETPORT)\00", align 1
@IOETHERSWITCHSETPORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHSETPORT)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i32, i8**)* @set_port_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_flag(%struct.cfg* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  store %struct.cfg* %0, %struct.cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %121

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  store i32 %37, i32* %10, align 4
  br label %80

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  store i32 %43, i32* %10, align 4
  br label %79

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @ETHERSWITCH_PORT_FIRSTLOCK, align 4
  store i32 %49, i32* %10, align 4
  br label %78

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @strcasecmp(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ETHERSWITCH_PORT_DROPTAGGED, align 4
  store i32 %55, i32* %10, align 4
  br label %77

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @ETHERSWITCH_PORT_DROPUNTAGGED, align 4
  store i32 %61, i32* %10, align 4
  br label %76

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strcasecmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @ETHERSWITCH_PORT_DOUBLE_TAG, align 4
  store i32 %67, i32* %10, align 4
  br label %75

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @strcasecmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @ETHERSWITCH_PORT_INGRESS, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %48
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %36
  br label %81

81:                                               ; preds = %80, %15
  %82 = call i32 @bzero(%struct.TYPE_4__* %11, i32 8)
  %83 = load %struct.cfg*, %struct.cfg** %5, align 8
  %84 = getelementptr inbounds %struct.cfg, %struct.cfg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.cfg*, %struct.cfg** %5, align 8
  %88 = getelementptr inbounds %struct.cfg, %struct.cfg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IOETHERSWITCHGETPORT, align 4
  %91 = call i64 @ioctl(i32 %89, i32 %90, %struct.TYPE_4__* %11)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @EX_OSERR, align 4
  %95 = call i32 @err(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %81
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = xor i32 %100, -1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %110

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %105, %99
  %111 = load %struct.cfg*, %struct.cfg** %5, align 8
  %112 = getelementptr inbounds %struct.cfg, %struct.cfg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IOETHERSWITCHSETPORT, align 4
  %115 = call i64 @ioctl(i32 %113, i32 %114, %struct.TYPE_4__* %11)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @EX_OSERR, align 4
  %119 = call i32 @err(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %110
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %14
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
