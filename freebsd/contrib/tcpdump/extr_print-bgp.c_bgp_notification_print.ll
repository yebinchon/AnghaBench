; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_notification_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_notification_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgp_notification = type { i32, i32 }

@BGP_NOTIFICATION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c", %s (%u)\00", align 1
@bgp_notify_major_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c", subcode %s (%u)\00", align 1
@bgp_notify_minor_msg_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@bgp_notify_minor_open_values = common dso_local global i32 0, align 4
@bgp_notify_minor_update_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c" subcode %s (%u)\00", align 1
@bgp_notify_minor_fsm_values = common dso_local global i32 0, align 4
@bgp_notify_minor_cap_values = common dso_local global i32 0, align 4
@bgp_notify_minor_cease_values = common dso_local global i32 0, align 4
@BGP_NOTIFY_MINOR_CEASE_MAXPRFX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c", AFI %s (%u), SAFI %s (%u), Max Prefixes: %u\00", align 1
@af_values = common dso_local global i32 0, align 4
@bgp_safi_values = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"[|BGP]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @bgp_notification_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgp_notification_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bgp_notification, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BGP_NOTIFICATION_SIZE, align 4
  %13 = call i32 @ND_TCHECK2(i32 %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @BGP_NOTIFICATION_SIZE, align 4
  %16 = call i32 @memcpy(%struct.bgp_notification* %7, i32* %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @BGP_NOTIFICATION_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %144

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @bgp_notify_major_values, align 4
  %24 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tok2str(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  %32 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %139 [
    i32 130, label %34
    i32 129, label %45
    i32 128, label %56
    i32 131, label %67
    i32 133, label %78
    i32 132, label %89
  ]

34:                                               ; preds = %21
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @bgp_notify_minor_msg_values, align 4
  %37 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @tok2str(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  br label %140

45:                                               ; preds = %21
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @bgp_notify_minor_open_values, align 4
  %48 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tok2str(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @ND_PRINT(i32* %54)
  br label %140

56:                                               ; preds = %21
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @bgp_notify_minor_update_values, align 4
  %59 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tok2str(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  br label %140

67:                                               ; preds = %21
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @bgp_notify_minor_fsm_values, align 4
  %70 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tok2str(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 @ND_PRINT(i32* %76)
  br label %140

78:                                               ; preds = %21
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @bgp_notify_minor_cap_values, align 4
  %81 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tok2str(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @ND_PRINT(i32* %87)
  br label %140

89:                                               ; preds = %21
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @bgp_notify_minor_cease_values, align 4
  %92 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @tok2str(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @ND_PRINT(i32* %98)
  %100 = getelementptr inbounds %struct.bgp_notification, %struct.bgp_notification* %7, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BGP_NOTIFY_MINOR_CEASE_MAXPRFX, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %89
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @BGP_NOTIFICATION_SIZE, align 4
  %107 = add nsw i32 %106, 7
  %108 = icmp sge i32 %105, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* @BGP_NOTIFICATION_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32* %113, i32** %8, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ND_TCHECK2(i32 %115, i32 7)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* @af_values, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @EXTRACT_16BITS(i32* %119)
  %121 = call i32 @tok2str(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @EXTRACT_16BITS(i32* %122)
  %124 = load i32, i32* @bgp_safi_values, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @tok2str(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = call i32 @EXTRACT_32BITS(i32* %133)
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i32*
  %137 = call i32 @ND_PRINT(i32* %136)
  br label %138

138:                                              ; preds = %109, %104, %89
  br label %140

139:                                              ; preds = %21
  br label %140

140:                                              ; preds = %139, %138, %78, %67, %56, %45, %34
  br label %144

141:                                              ; No predecessors!
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.6 to i32*))
  br label %144

144:                                              ; preds = %141, %140, %20
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(%struct.bgp_notification*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
