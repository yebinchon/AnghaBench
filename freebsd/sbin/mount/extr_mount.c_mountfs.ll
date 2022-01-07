; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_mountfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_mountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa = type { i32, i8** }
%struct.statfs = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@mountfs.mnt_argv = internal global %struct.cpa zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"msdos\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"msdosfs\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"mount_%s\00", align 1
@mountprog = common dso_local global i8* null, align 8
@debug = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"exec: %s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"mount -t %s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"statfs %s\00", align 1
@fstab_style = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mountfs(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.statfs, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @checkpath(i8* %29, i8* %28)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %169

34:                                               ; preds = %6
  store i8* %28, i8** %10, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* @strdup(i8* %39)
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @catopt(i8* %40, i8* %41)
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @MNT_UPDATE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MNT_FORCE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %17, align 8
  %57 = call i8* @catopt(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %57, i8** %17, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MNT_RDONLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %17, align 8
  %65 = call i8* @catopt(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %65, i8** %17, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MNT_UPDATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %17, align 8
  %73 = call i8* @catopt(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %73, i8** %17, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = trunc i64 %23 to i32
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @snprintf(i8* %25, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  store i32 -1, i32* getelementptr inbounds (%struct.cpa, %struct.cpa* @mountfs.mnt_argv, i32 0, i32 0), align 8
  %83 = call i32 @append_arg(%struct.cpa* @mountfs.mnt_argv, i8* %25)
  %84 = load i8*, i8** %17, align 8
  %85 = call i32 @mangle(i8* %84, %struct.cpa* @mountfs.mnt_argv)
  %86 = load i8*, i8** @mountprog, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i8*, i8** @mountprog, align 8
  %90 = trunc i64 %23 to i32
  %91 = call i32 @strlcpy(i8* %25, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i8*, i8** %9, align 8
  %94 = call i8* @strdup(i8* %93)
  %95 = call i32 @append_arg(%struct.cpa* @mountfs.mnt_argv, i8* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = call i8* @strdup(i8* %96)
  %98 = call i32 @append_arg(%struct.cpa* @mountfs.mnt_argv, i8* %97)
  %99 = call i32 @append_arg(%struct.cpa* @mountfs.mnt_argv, i8* null)
  %100 = load i64, i64* @debug, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %92
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @use_mountprog(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %25)
  br label %111

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %106
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.cpa, %struct.cpa* @mountfs.mnt_argv, i32 0, i32 0), align 8
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load i8**, i8*** getelementptr inbounds (%struct.cpa, %struct.cpa* @mountfs.mnt_argv, i32 0, i32 1), align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %112

126:                                              ; preds = %112
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i8*, i8** %17, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** @mountprog, align 8
  %131 = call i32 @free(i8* %130)
  store i8* null, i8** @mountprog, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %169

132:                                              ; preds = %92
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @use_mountprog(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8*, i8** %10, align 8
  %138 = load i8**, i8*** getelementptr inbounds (%struct.cpa, %struct.cpa* @mountfs.mnt_argv, i32 0, i32 1), align 8
  %139 = call i32 @exec_mountprog(i8* %137, i8* %25, i8** %138)
  store i32 %139, i32* %16, align 4
  br label %145

140:                                              ; preds = %132
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.cpa, %struct.cpa* @mountfs.mnt_argv, i32 0, i32 0), align 8
  %143 = load i8**, i8*** getelementptr inbounds (%struct.cpa, %struct.cpa* @mountfs.mnt_argv, i32 0, i32 1), align 8
  %144 = call i32 @mount_fs(i8* %141, i32 %142, i8** %143)
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %140, %136
  %146 = load i8*, i8** %17, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i8*, i8** @mountprog, align 8
  %149 = call i32 @free(i8* %148)
  store i8* null, i8** @mountprog, align 8
  %150 = load i64, i64* @verbose, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %145
  %153 = load i8*, i8** %10, align 8
  %154 = call i64 @statfs(i8* %153, %struct.statfs* %14)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %157)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %169

159:                                              ; preds = %152
  %160 = load i64, i64* @fstab_style, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i32 @putfsent(%struct.statfs* %14)
  br label %166

164:                                              ; preds = %159
  %165 = call i32 @prmount(%struct.statfs* %14)
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %145
  %168 = load i32, i32* %16, align 4
  store i32 %168, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %169

169:                                              ; preds = %167, %156, %126, %32
  %170 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @checkpath(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i8* @catopt(i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @append_arg(%struct.cpa*, i8*) #2

declare dso_local i32 @mangle(i8*, %struct.cpa*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @use_mountprog(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @exec_mountprog(i8*, i8*, i8**) #2

declare dso_local i32 @mount_fs(i8*, i32, i8**) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @putfsent(%struct.statfs*) #2

declare dso_local i32 @prmount(%struct.statfs*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
