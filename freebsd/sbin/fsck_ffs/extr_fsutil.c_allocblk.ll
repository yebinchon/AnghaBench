; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_allocblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_allocblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.bufarea = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.cg* }
%struct.cg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@sblock = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@maxfsblock = common dso_local global i32 0, align 4
@n_blks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allocblk(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufarea*, align 8
  %10 = alloca %struct.cg*, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %149

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %142, %18
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @maxfsblock, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %25 = sub nsw i64 %23, %24
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %148

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %138, %27
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sle i64 %30, %33
  br i1 %34, label %35, label %141

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i64 @testbmap(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %138

42:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %3, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i64 @testbmap(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %56, %43
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %3, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %138

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @dtog(%struct.TYPE_8__* @sblock, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.bufarea* @cglookup(i32 %75)
  store %struct.bufarea* %76, %struct.bufarea** %9, align 8
  %77 = load %struct.bufarea*, %struct.bufarea** %9, align 8
  %78 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.cg*, %struct.cg** %79, align 8
  store %struct.cg* %80, %struct.cg** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.bufarea*, %struct.bufarea** %9, align 8
  %83 = call i32 @check_cgmagic(i32 %81, %struct.bufarea* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %149

86:                                               ; preds = %70
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @dtogd(%struct.TYPE_8__* @sblock, i32 %89)
  store i32 %90, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %109, %86
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %3, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @setbmap(i32 %101)
  %103 = load %struct.cg*, %struct.cg** %10, align 8
  %104 = call i32 @cg_blksfree(%struct.cg* %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @clrbit(i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @n_blks, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* @n_blks, align 8
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.cg*, %struct.cg** %10, align 8
  %121 = getelementptr inbounds %struct.cg, %struct.cg* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 8
  br label %132

125:                                              ; preds = %112
  %126 = load i64, i64* %3, align 8
  %127 = load %struct.cg*, %struct.cg** %10, align 8
  %128 = getelementptr inbounds %struct.cg, %struct.cg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, %126
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.bufarea*, %struct.bufarea** %9, align 8
  %134 = call i32 @cgdirty(%struct.bufarea* %133)
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %2, align 4
  br label %149

138:                                              ; preds = %66, %41
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %28

141:                                              ; preds = %28
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %4, align 4
  br label %19

148:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %132, %85, %17
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @testbmap(i32) #1

declare dso_local i32 @dtog(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.bufarea* @cglookup(i32) #1

declare dso_local i32 @check_cgmagic(i32, %struct.bufarea*) #1

declare dso_local i32 @dtogd(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setbmap(i32) #1

declare dso_local i32 @clrbit(i32, i32) #1

declare dso_local i32 @cg_blksfree(%struct.cg*) #1

declare dso_local i32 @cgdirty(%struct.bufarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
