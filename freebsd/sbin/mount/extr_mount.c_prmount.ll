; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_prmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_prmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt = type { i32, i8* }
%struct.statfs = type { i8*, i8*, i8*, i32, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"%s on %s (%s\00", align 1
@MNT_VISFLAGMASK = common dso_local global i32 0, align 4
@optnames = common dso_local global %struct.opt* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@MNT_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c", mounted by \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c", writes: sync %ju async %ju\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c", reads: sync %ju async %ju\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c", fsid \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prmount(%struct.statfs* %0) #0 {
  %2 = alloca %struct.statfs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.opt*, align 8
  %6 = alloca %struct.passwd*, align 8
  store %struct.statfs* %0, %struct.statfs** %2, align 8
  %7 = load %struct.statfs*, %struct.statfs** %2, align 8
  %8 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.statfs*, %struct.statfs** %2, align 8
  %11 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.statfs*, %struct.statfs** %2, align 8
  %14 = getelementptr inbounds %struct.statfs, %struct.statfs* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %12, i8* %15)
  %17 = load %struct.statfs*, %struct.statfs** %2, align 8
  %18 = getelementptr inbounds %struct.statfs, %struct.statfs* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MNT_VISFLAGMASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load %struct.opt*, %struct.opt** @optnames, align 8
  store %struct.opt* %22, %struct.opt** %5, align 8
  br label %23

23:                                               ; preds = %52, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.opt*, %struct.opt** %5, align 8
  %28 = getelementptr inbounds %struct.opt, %struct.opt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %55

33:                                               ; preds = %31
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.opt*, %struct.opt** %5, align 8
  %36 = getelementptr inbounds %struct.opt, %struct.opt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.opt*, %struct.opt** %5, align 8
  %42 = getelementptr inbounds %struct.opt, %struct.opt* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.opt*, %struct.opt** %5, align 8
  %46 = getelementptr inbounds %struct.opt, %struct.opt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %40, %33
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.opt*, %struct.opt** %5, align 8
  %54 = getelementptr inbounds %struct.opt, %struct.opt* %53, i32 1
  store %struct.opt* %54, %struct.opt** %5, align 8
  br label %23

55:                                               ; preds = %31
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MNT_USER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.statfs*, %struct.statfs** %2, align 8
  %62 = getelementptr inbounds %struct.statfs, %struct.statfs* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60, %55
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.statfs*, %struct.statfs** %2, align 8
  %68 = getelementptr inbounds %struct.statfs, %struct.statfs* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call %struct.passwd* @getpwuid(i64 %69)
  store %struct.passwd* %70, %struct.passwd** %6, align 8
  %71 = icmp ne %struct.passwd* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.passwd*, %struct.passwd** %6, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  br label %82

77:                                               ; preds = %65
  %78 = load %struct.statfs*, %struct.statfs** %2, align 8
  %79 = getelementptr inbounds %struct.statfs, %struct.statfs* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i64, i64* @verbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %162

86:                                               ; preds = %83
  %87 = load %struct.statfs*, %struct.statfs** %2, align 8
  %88 = getelementptr inbounds %struct.statfs, %struct.statfs* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.statfs*, %struct.statfs** %2, align 8
  %93 = getelementptr inbounds %struct.statfs, %struct.statfs* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91, %86
  %97 = load %struct.statfs*, %struct.statfs** %2, align 8
  %98 = getelementptr inbounds %struct.statfs, %struct.statfs* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.statfs*, %struct.statfs** %2, align 8
  %102 = getelementptr inbounds %struct.statfs, %struct.statfs* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %96, %91
  %107 = load %struct.statfs*, %struct.statfs** %2, align 8
  %108 = getelementptr inbounds %struct.statfs, %struct.statfs* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.statfs*, %struct.statfs** %2, align 8
  %113 = getelementptr inbounds %struct.statfs, %struct.statfs* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111, %106
  %117 = load %struct.statfs*, %struct.statfs** %2, align 8
  %118 = getelementptr inbounds %struct.statfs, %struct.statfs* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.statfs*, %struct.statfs** %2, align 8
  %122 = getelementptr inbounds %struct.statfs, %struct.statfs* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %116, %111
  %127 = load %struct.statfs*, %struct.statfs** %2, align 8
  %128 = getelementptr inbounds %struct.statfs, %struct.statfs* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %126
  %135 = load %struct.statfs*, %struct.statfs** %2, align 8
  %136 = getelementptr inbounds %struct.statfs, %struct.statfs* %135, i32 0, i32 9
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %134, %126
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %157, %142
  %145 = load i32, i32* %4, align 4
  %146 = zext i32 %145 to i64
  %147 = icmp ult i64 %146, 8
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load %struct.statfs*, %struct.statfs** %2, align 8
  %150 = getelementptr inbounds %struct.statfs, %struct.statfs* %149, i32 0, i32 9
  %151 = bitcast %struct.TYPE_2__* %150 to i32*
  %152 = load i32, i32* %4, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %4, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %144

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %83
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
