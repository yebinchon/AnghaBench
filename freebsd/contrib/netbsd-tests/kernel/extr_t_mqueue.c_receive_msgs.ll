; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_mqueue.c_receive_msgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_mqueue.c_receive_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mq_attr = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"mq_getattr failed %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"mq_receive 1 failed: %d\00", align 1
@MQ_PRIO_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"mq_receive 1 prio/data mismatch\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"mq_receive 2 failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"mq_receive 2 prio/data mismatch\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mq_receive 3 failed: %d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"mq_receive 3 prio/data mismatch\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"mq_receive 4 failed: %d\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"mq_receive 4 prio/data mismatch\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"mq_receive 5 failed: %d\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"mq_receive 5 prio/data mismatch\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"mq_receive 6 failed: %d\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"mq_receive 6 prio/data mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @receive_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_msgs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mq_attr, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @mq_getattr(i32 %7, %struct.mq_attr* %3)
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @calloc(i32 1, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mq_receive(i32 %21, i8* %22, i32 %23, i32* %5)
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MQ_PRIO_BASE, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 98
  br label %39

39:                                               ; preds = %33, %1
  %40 = phi i1 [ false, %1 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mq_receive(i32 %43, i8* %44, i32 %45, i32* %5)
  %47 = icmp ne i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MQ_PRIO_BASE, align 4
  %53 = add nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %39
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 102
  br label %61

61:                                               ; preds = %55, %39
  %62 = phi i1 [ false, %39 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* %2, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @mq_receive(i32 %65, i8* %66, i32 %67, i32* %5)
  %69 = icmp ne i32 %68, -1
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MQ_PRIO_BASE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %61
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 97
  br label %82

82:                                               ; preds = %76, %61
  %83 = phi i1 [ false, %61 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @mq_receive(i32 %86, i8* %87, i32 %88, i32* %5)
  %90 = icmp ne i32 %89, -1
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MQ_PRIO_BASE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 99
  br label %103

103:                                              ; preds = %97, %82
  %104 = phi i1 [ false, %82 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @mq_receive(i32 %107, i8* %108, i32 %109, i32* %5)
  %111 = icmp ne i32 %110, -1
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @MQ_PRIO_BASE, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %103
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 100
  br label %125

125:                                              ; preds = %119, %103
  %126 = phi i1 [ false, %103 ], [ %124, %119 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %129 = load i32, i32* %2, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @mq_receive(i32 %129, i8* %130, i32 %131, i32* %5)
  %133 = icmp ne i32 %132, -1
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* @errno, align 4
  %136 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 101
  br label %145

145:                                              ; preds = %139, %125
  %146 = phi i1 [ false, %125 ], [ %144, %139 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i32 @mq_getattr(i32, %struct.mq_attr*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @mq_receive(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
