; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_msdosfs.c_msdosfs_filestat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_msdosfs.c_msdosfs_filestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dosmount = type { i64, %struct.denode, %struct.dosmount* }
%struct.denode = type { i64, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.vnstat = type { i32, i32, i32, i32 }

@msdosfs_filestat.mounts = internal global %struct.dosmount* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"can't read denode at %p\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't read mount info at %p\00", align 1
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@MSDOSFSROOT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdosfs_filestat(i32* %0, %struct.vnode* %1, %struct.vnstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnstat*, align 8
  %8 = alloca %struct.denode, align 8
  %9 = alloca %struct.dosmount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnstat* %2, %struct.vnstat** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %6, align 8
  %14 = call i64 @VTODE(%struct.vnode* %13)
  %15 = call i32 @kvm_read_all(i32* %12, i64 %14, %struct.denode* %8, i32 56)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = call i64 @VTODE(%struct.vnode* %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %4, align 4
  br label %178

22:                                               ; preds = %3
  %23 = load %struct.dosmount*, %struct.dosmount** @msdosfs_filestat.mounts, align 8
  store %struct.dosmount* %23, %struct.dosmount** %9, align 8
  br label %24

24:                                               ; preds = %36, %22
  %25 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %26 = icmp ne %struct.dosmount* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %29 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %40

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %38 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %37, i32 0, i32 2
  %39 = load %struct.dosmount*, %struct.dosmount** %38, align 8
  store %struct.dosmount* %39, %struct.dosmount** %9, align 8
  br label %24

40:                                               ; preds = %34, %24
  %41 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %42 = icmp ne %struct.dosmount* %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = call %struct.dosmount* @malloc(i32 72)
  store %struct.dosmount* %44, %struct.dosmount** %9, align 8
  %45 = icmp eq %struct.dosmount* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %178

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %53 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %52, i32 0, i32 1
  %54 = call i32 @kvm_read_all(i32* %49, i64 %51, %struct.denode* %53, i32 56)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %48
  %57 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %58 = call i32 @free(%struct.dosmount* %57)
  %59 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  store i32 1, i32* %4, align 4
  br label %178

63:                                               ; preds = %48
  %64 = load %struct.dosmount*, %struct.dosmount** @msdosfs_filestat.mounts, align 8
  %65 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %66 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %65, i32 0, i32 2
  store %struct.dosmount* %64, %struct.dosmount** %66, align 8
  %67 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  store %struct.dosmount* %67, %struct.dosmount** @msdosfs_filestat.mounts, align 8
  %68 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %71 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %63, %40
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %75 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.denode, %struct.denode* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev2udev(i32* %73, i32 %77)
  %79 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %80 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %82 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %81, i32 0, i32 0
  store i32 365, i32* %82, align 4
  %83 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ATTR_READONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 146
  %90 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %91 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %95 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.denode, %struct.denode* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %99 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ATTR_DIRECTORY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %72
  %108 = load i32, i32* @S_IFDIR, align 4
  br label %111

109:                                              ; preds = %72
  %110 = load i32, i32* @S_IFREG, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %114 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %120 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %122 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.denode, %struct.denode* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = udiv i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %10, align 4
  %128 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ATTR_DIRECTORY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %111
  %134 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %135 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @cntobn(%struct.denode* %135, i64 %137)
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %11, align 4
  %141 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MSDOSFSROOT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 1, i32* %11, align 4
  br label %146

146:                                              ; preds = %145, %133
  br label %174

147:                                              ; preds = %111
  %148 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %149 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @cntobn(%struct.denode* %149, i64 %151)
  %153 = load i32, i32* %10, align 4
  %154 = mul nsw i32 %152, %153
  store i32 %154, i32* %11, align 4
  %155 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MSDOSFSROOT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %147
  %160 = load %struct.dosmount*, %struct.dosmount** %9, align 8
  %161 = getelementptr inbounds %struct.dosmount, %struct.dosmount* %160, i32 0, i32 1
  %162 = call i32 @roottobn(%struct.denode* %161, i32 0)
  %163 = load i32, i32* %10, align 4
  %164 = mul nsw i32 %162, %163
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %159, %147
  %166 = getelementptr inbounds %struct.denode, %struct.denode* %8, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = udiv i64 %168, 4
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = add i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %165, %146
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.vnstat*, %struct.vnstat** %7, align 8
  %177 = getelementptr inbounds %struct.vnstat, %struct.vnstat* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %56, %46, %17
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.denode*, i32) #1

declare dso_local i64 @VTODE(%struct.vnode*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local %struct.dosmount* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(%struct.dosmount*) #1

declare dso_local i32 @dev2udev(i32*, i32) #1

declare dso_local i32 @cntobn(%struct.denode*, i64) #1

declare dso_local i32 @roottobn(%struct.denode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
