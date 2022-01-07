; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_free_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_free_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suj_ino = type { i32 }
%struct.direct = type { i64, i32, i8*, i64 }

@fs = common dso_local global i32 0, align 4
@UFS_WINO = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Directory %ju removing ino %ju name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @ino_free_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_free_children(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.suj_ino*, align 8
  %10 = alloca %struct.direct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.suj_ino* @ino_lookup(i64 %17, i32 0)
  store %struct.suj_ino* %18, %struct.suj_ino** %9, align 8
  %19 = load %struct.suj_ino*, %struct.suj_ino** %9, align 8
  %20 = icmp ne %struct.suj_ino* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.suj_ino*, %struct.suj_ino** %9, align 8
  %23 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  br label %26

25:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* @fs, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @lfragtosize(i32 %27, i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32* @dblk_read(i32 %30, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = bitcast i32* %34 to %struct.direct*
  store %struct.direct* %35, %struct.direct** %10, align 8
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %136, %26
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.direct*, %struct.direct** %10, align 8
  %42 = getelementptr inbounds %struct.direct, %struct.direct* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ false, %36 ], [ %44, %40 ]
  br i1 %46, label %47, label %144

47:                                               ; preds = %45
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = bitcast i32* %51 to %struct.direct*
  store %struct.direct* %52, %struct.direct** %10, align 8
  %53 = load %struct.direct*, %struct.direct** %10, align 8
  %54 = getelementptr inbounds %struct.direct, %struct.direct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = load %struct.direct*, %struct.direct** %10, align 8
  %59 = getelementptr inbounds %struct.direct, %struct.direct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UFS_WINO, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %47
  br label %136

64:                                               ; preds = %57
  %65 = load %struct.direct*, %struct.direct** %10, align 8
  %66 = getelementptr inbounds %struct.direct, %struct.direct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.direct*, %struct.direct** %10, align 8
  %71 = getelementptr inbounds %struct.direct, %struct.direct* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %136

78:                                               ; preds = %69, %64
  %79 = load %struct.direct*, %struct.direct** %10, align 8
  %80 = getelementptr inbounds %struct.direct, %struct.direct* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load %struct.direct*, %struct.direct** %10, align 8
  %85 = getelementptr inbounds %struct.direct, %struct.direct* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.direct*, %struct.direct** %10, align 8
  %93 = getelementptr inbounds %struct.direct, %struct.direct* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 46
  br label %99

99:                                               ; preds = %91, %83, %78
  %100 = phi i1 [ false, %83 ], [ false, %78 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %136

108:                                              ; preds = %104, %99
  %109 = load i64, i64* @debug, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i64, i64* %5, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.direct*, %struct.direct** %10, align 8
  %115 = getelementptr inbounds %struct.direct, %struct.direct* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.direct*, %struct.direct** %10, align 8
  %119 = getelementptr inbounds %struct.direct, %struct.direct* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %117, i8* %120)
  br label %122

122:                                              ; preds = %111, %108
  %123 = load i32, i32* @fs, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @lblktosize(i32 %123, i32 %124)
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.direct*, %struct.direct** %10, align 8
  %131 = getelementptr inbounds %struct.direct, %struct.direct* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @ino_remref(i64 %129, i64 %132, i64 %133, i32 %134)
  br label %136

136:                                              ; preds = %122, %107, %77, %63
  %137 = load %struct.direct*, %struct.direct** %10, align 8
  %138 = getelementptr inbounds %struct.direct, %struct.direct* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %15, align 4
  br label %36

144:                                              ; preds = %45
  ret void
}

declare dso_local %struct.suj_ino* @ino_lookup(i64, i32) #1

declare dso_local i32 @lfragtosize(i32, i32) #1

declare dso_local i32* @dblk_read(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

declare dso_local i64 @lblktosize(i32, i32) #1

declare dso_local i32 @ino_remref(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
