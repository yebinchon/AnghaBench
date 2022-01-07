; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_createleaves.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_createleaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.entry = type { i32 }

@command = common dso_local global i8 0, align 1
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Continue extraction of new leaves\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Extract new leaves.\0A\00", align 1
@volno = common dso_local global i64 0, align 8
@UFS_ROOTINO = common dso_local global i64 0, align 8
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@maxino = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%ju: bad first\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: not found on tape\0A\00", align 1
@NEW = common dso_local global i32 0, align 4
@EXTRACT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"expected next file %ju, got %ju\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"unknown file on tape\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"unexpected file on tape\00", align 1
@REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createleaves(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8, i8* @command, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 82
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @vprintf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @vprintf(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = load i64, i64* @volno, align 8
  %17 = call i32 @dumpsymtable(i8* %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i64, i64* @UFS_ROOTINO, align 8
  %20 = call i64 @lowerbnd(i64 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* @volno, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %128, %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %24 = load i64, i64* @maxino, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %129

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @lowerbnd(i64 %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %42, %26
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call %struct.entry* @lookupino(i64 %34)
  store %struct.entry* %35, %struct.entry** %3, align 8
  %36 = load %struct.entry*, %struct.entry** %3, align 8
  %37 = icmp eq %struct.entry* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.entry*, %struct.entry** %3, align 8
  %45 = call i8* @myname(%struct.entry* %44)
  %46 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @NEW, align 4
  %48 = load i32, i32* @EXTRACT, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.entry*, %struct.entry** %3, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @lowerbnd(i64 %55)
  store i64 %56, i64* %4, align 8
  br label %29

57:                                               ; preds = %29
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* %4, align 8
  %64 = trunc i64 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %66, i32 %68)
  %70 = call i32 (...) @skipfile()
  br label %118

71:                                               ; preds = %57
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %73 = call %struct.entry* @lookupino(i64 %72)
  store %struct.entry* %73, %struct.entry** %3, align 8
  %74 = load %struct.entry*, %struct.entry** %3, align 8
  %75 = icmp eq %struct.entry* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load %struct.entry*, %struct.entry** %3, align 8
  %80 = getelementptr inbounds %struct.entry, %struct.entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NEW, align 4
  %83 = load i32, i32* @EXTRACT, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.entry*, %struct.entry** %3, align 8
  %89 = call i32 @badentry(%struct.entry* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %78
  %91 = load %struct.entry*, %struct.entry** %3, align 8
  %92 = getelementptr inbounds %struct.entry, %struct.entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EXTRACT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load %struct.entry*, %struct.entry** %3, align 8
  %99 = call i32 @removeleaf(%struct.entry* %98)
  %100 = load i32, i32* @REMOVED, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.entry*, %struct.entry** %3, align 8
  %103 = getelementptr inbounds %struct.entry, %struct.entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %97, %90
  %107 = load %struct.entry*, %struct.entry** %3, align 8
  %108 = call i8* @myname(%struct.entry* %107)
  %109 = call i32 @extractfile(i8* %108)
  %110 = load i32, i32* @NEW, align 4
  %111 = load i32, i32* @EXTRACT, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.entry*, %struct.entry** %3, align 8
  %115 = getelementptr inbounds %struct.entry, %struct.entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %106, %61
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @volno, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i8*, i8** %2, align 8
  %124 = load i64, i64* @volno, align 8
  %125 = call i32 @dumpsymtable(i8* %123, i64 %124)
  %126 = call i32 (...) @skipmaps()
  %127 = load i64, i64* @volno, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %122, %118
  br label %22

129:                                              ; preds = %22
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i32 @dumpsymtable(i8*, i64) #1

declare dso_local i64 @lowerbnd(i64) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i32 @skipfile(...) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local i32 @removeleaf(%struct.entry*) #1

declare dso_local i32 @extractfile(i8*) #1

declare dso_local i32 @skipmaps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
