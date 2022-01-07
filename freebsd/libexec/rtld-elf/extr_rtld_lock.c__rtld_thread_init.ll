; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld_lock.c__rtld_thread_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld_lock.c__rtld_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtldLockInfo = type { i32, i32, i32, i32 (i8*)*, i32 (i8*)*, i32, i32 (i8*)*, i8* (...)* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 (i8*)*, i32 (i8*)*, i32, i32 (i8*)*, i8* (...)* }

@RTLD_LOCK_CNT = common dso_local global i32 0, align 4
@deflockinfo = common dso_local global %struct.RtldLockInfo zeroinitializer, align 8
@rtld_locks = common dso_local global %struct.TYPE_3__* null, align 8
@lockinfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"_rtld_thread_init: done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtld_thread_init(%struct.RtldLockInfo* %0) #0 {
  %2 = alloca %struct.RtldLockInfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.RtldLockInfo* %0, %struct.RtldLockInfo** %2, align 8
  %7 = load i32, i32* @RTLD_LOCK_CNT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8*, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = call i32 @thread_mask_set(i32 -1)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %13 = icmp eq %struct.RtldLockInfo* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.RtldLockInfo* @deflockinfo, %struct.RtldLockInfo** %2, align 8
  br label %15

15:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RTLD_LOCK_CNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %22 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %21, i32 0, i32 7
  %23 = load i8* (...)*, i8* (...)** %22, align 8
  %24 = call i8* (...) %23()
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %10, i64 %26
  store i8* %24, i8** %27, align 8
  %28 = icmp eq i8* %24, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %16

34:                                               ; preds = %29, %16
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @RTLD_LOCK_CNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %45 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %44, i32 0, i32 6
  %46 = load i32 (i8*)*, i32 (i8*)** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %10, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 %46(i8* %50)
  br label %39

52:                                               ; preds = %39
  %53 = call i32 (...) @abort() #4
  unreachable

54:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %96, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @RTLD_LOCK_CNT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %55
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %96

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %69, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 3), align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 %79(i8* %85)
  br label %87

87:                                               ; preds = %78, %68
  %88 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 6), align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 %88(i8* %94)
  br label %96

96:                                               ; preds = %87, %67
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %55

99:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %135, %99
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @RTLD_LOCK_CNT, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %10, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i8* %108, i8** %113, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %114, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %104
  %124 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %125 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %124, i32 0, i32 4
  %126 = load i32 (i8*)*, i32 (i8*)** %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rtld_locks, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 %126(i8* %132)
  br label %134

134:                                              ; preds = %123, %104
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %100

138:                                              ; preds = %100
  %139 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %140 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %139, i32 0, i32 7
  %141 = load i8* (...)*, i8* (...)** %140, align 8
  store i8* (...)* %141, i8* (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 7), align 8
  %142 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %143 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %142, i32 0, i32 6
  %144 = load i32 (i8*)*, i32 (i8*)** %143, align 8
  store i32 (i8*)* %144, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 6), align 8
  %145 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %146 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 5), align 8
  %148 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %149 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %148, i32 0, i32 4
  %150 = load i32 (i8*)*, i32 (i8*)** %149, align 8
  store i32 (i8*)* %150, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 4), align 8
  %151 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %152 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %151, i32 0, i32 3
  %153 = load i32 (i8*)*, i32 (i8*)** %152, align 8
  store i32 (i8*)* %153, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 3), align 8
  %154 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %155 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 2), align 8
  %157 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %158 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 1), align 4
  %160 = load %struct.RtldLockInfo*, %struct.RtldLockInfo** %2, align 8
  %161 = getelementptr inbounds %struct.RtldLockInfo, %struct.RtldLockInfo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lockinfo, i32 0, i32 0), align 8
  %163 = call i32 @thread_mask_clear(i32 -1)
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @thread_mask_set(i32 %164)
  %166 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %167 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %167)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @thread_mask_set(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @thread_mask_clear(i32) #2

declare dso_local i32 @dbg(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
