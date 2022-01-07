; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_checksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_checksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64, i32 }
%struct.fatEntry = type { i32, i64 }
%struct.dosDirEntry = type { i64, i32 }

@CLUST_FREE = common dso_local global i64 0, align 8
@CLUST_FIRST = common dso_local global i64 0, align 8
@FSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"size of %s is %u, should at most be %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Truncate\00", align 1
@FSDIRMOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s has too many clusters allocated\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Drop superfluous clusters\00", align 1
@CLUST_EOF = common dso_local global i64 0, align 8
@FSFATMOD = common dso_local global i32 0, align 4
@FSOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bootblock*, %struct.fatEntry*, i64*, %struct.dosDirEntry*)* @checksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksize(%struct.bootblock* %0, %struct.fatEntry* %1, i64* %2, %struct.dosDirEntry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bootblock*, align 8
  %7 = alloca %struct.fatEntry*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dosDirEntry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bootblock* %0, %struct.bootblock** %6, align 8
  store %struct.fatEntry* %1, %struct.fatEntry** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.dosDirEntry* %3, %struct.dosDirEntry** %9, align 8
  %14 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %15 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CLUST_FREE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %22 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CLUST_FIRST, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %28 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %31 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %20
  %35 = load i32, i32* @FSERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %156

36:                                               ; preds = %26
  %37 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %38 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %39 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %37, i64 %40
  %42 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %45 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %36, %19
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %51 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %48
  %55 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %56 = call i32 @fullpath(%struct.dosDirEntry* %55)
  %57 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %58 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, i32, ...) @pwarn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %60)
  %62 = call i64 @ask(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %67 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 28
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 29
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 16
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %8, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 30
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 24
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 31
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @FSDIRMOD, align 4
  store i32 %87, i32* %5, align 4
  br label %156

88:                                               ; preds = %54
  %89 = load i32, i32* @FSERROR, align 4
  store i32 %89, i32* %5, align 4
  br label %156

90:                                               ; preds = %48
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %93 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  %96 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %97 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %153

100:                                              ; preds = %90
  %101 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %102 = call i32 @fullpath(%struct.dosDirEntry* %101)
  %103 = call i32 (i8*, i32, ...) @pwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = call i64 @ask(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %151

106:                                              ; preds = %100
  %107 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %108 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %126, %106
  %111 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %112 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %117 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %110
  %121 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %121, i64 %122
  %124 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %110

129:                                              ; preds = %110
  %130 = load %struct.bootblock*, %struct.bootblock** %6, align 8
  %131 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %132 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %132, i64 %133
  %135 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @clearchain(%struct.bootblock* %130, %struct.fatEntry* %131, i64 %136)
  %138 = load i64, i64* @CLUST_EOF, align 8
  %139 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %139, i64 %140
  %142 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %141, i32 0, i32 1
  store i64 %138, i64* %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.fatEntry*, %struct.fatEntry** %7, align 8
  %145 = load %struct.dosDirEntry*, %struct.dosDirEntry** %9, align 8
  %146 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %144, i64 %147
  %149 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %148, i32 0, i32 0
  store i32 %143, i32* %149, align 8
  %150 = load i32, i32* @FSFATMOD, align 4
  store i32 %150, i32* %5, align 4
  br label %156

151:                                              ; preds = %100
  %152 = load i32, i32* @FSERROR, align 4
  store i32 %152, i32* %5, align 4
  br label %156

153:                                              ; preds = %90
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* @FSOK, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %151, %129, %88, %64, %34
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @pwarn(i8*, i32, ...) #1

declare dso_local i32 @fullpath(%struct.dosDirEntry*) #1

declare dso_local i64 @ask(i32, i8*) #1

declare dso_local i32 @clearchain(%struct.bootblock*, %struct.fatEntry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
