; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_print_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32, i64, i32 }

@IFMEDIAREQ_NULISTENTRIES = common dso_local global i32 0, align 4
@IOETHERSWITCHGETPORT = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETPORT)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"port%d:\0A\00", align 1
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"\09pvid: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\09flags\00", align 1
@ETHERSWITCH_PORT_FLAGS_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\09led: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d:%s%s\00", align 1
@ledstyles = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\09media: \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\09status: %s\0A\00", align 1
@IFM_ACTIVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"no carrier\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\09supported media:\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\09\09media \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg*, i32)* @print_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_port(%struct.cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cfg* %0, %struct.cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @IFMEDIAREQ_NULISTENTRIES, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 @bzero(%struct.TYPE_8__* %5, i32 64)
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* %12, i32** %17, align 8
  %18 = load i32, i32* @IFMEDIAREQ_NULISTENTRIES, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cfg*, %struct.cfg** %3, align 8
  %22 = getelementptr inbounds %struct.cfg, %struct.cfg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IOETHERSWITCHGETPORT, align 4
  %25 = call i64 @ioctl(i32 %23, i32 %24, %struct.TYPE_8__* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = call i32 @err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.cfg*, %struct.cfg** %3, align 8
  %34 = getelementptr inbounds %struct.cfg, %struct.cfg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %30
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ETHERSWITCH_PORT_FLAGS_BITS, align 4
  %47 = call i32 @printb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %43
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %79, %52
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i8**, i8*** @ledstyles, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8*, i8** %62, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = icmp eq i32 %71, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %61, i8* %70, i8* %77)
  br label %79

79:                                               ; preds = %59
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %54

82:                                               ; preds = %54
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %43
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @print_media_word(i32 %88, i32 1)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %84
  %99 = call i32 @putchar(i8 signext 32)
  %100 = call i32 @putchar(i8 signext 40)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @print_media_word(i32 %104, i32 0)
  %106 = call i32 @putchar(i8 signext 41)
  br label %107

107:                                              ; preds = %98, %84
  %108 = call i32 @putchar(i8 signext 10)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IFM_ACTIVE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %116)
  %118 = load %struct.cfg*, %struct.cfg** %3, align 8
  %119 = getelementptr inbounds %struct.cfg, %struct.cfg* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %152

122:                                              ; preds = %107
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @IFMEDIAREQ_NULISTENTRIES, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* @IFMEDIAREQ_NULISTENTRIES, align 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %122
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %148, %133
  %135 = load i32, i32* %8, align 4
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %12, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @print_media_word(i32 %145, i32 0)
  %147 = call i32 @putchar(i8 signext 10)
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %134

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151, %107
  %153 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @printb(i8*, i32, i32) #2

declare dso_local i32 @print_media_word(i32, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
