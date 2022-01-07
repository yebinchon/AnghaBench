; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_createfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_createfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.entry = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Extract requested files\0A\00", align 1
@SKIP = common dso_local global i8* null, align 8
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@volno = common dso_local global i32 0, align 4
@Dflag = common dso_local global i64 0, align 8
@NEW = common dso_local global i32 0, align 4
@EXTRACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"corrupted symbol table\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: not found on tape\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createfiles() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @vprintf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** @SKIP, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  %9 = call i32 @getvol(i64 1)
  %10 = call i32 (...) @skipmaps()
  %11 = call i32 (...) @skipdirs()
  %12 = load i64, i64* @UFS_ROOTINO, align 8
  %13 = call i64 @lowerbnd(i64 %12)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* @maxino, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i64 @upperbnd(i64 %15)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %157, %93, %63, %50, %0
  %18 = load i32, i32* @volno, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %1, align 8
  %21 = call i64 @lowerbnd(i64 %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @upperbnd(i64 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %158

28:                                               ; preds = %17
  %29 = load i64, i64* @Dflag, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %33 = load i64, i64* @maxino, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %158

36:                                               ; preds = %31
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %38 = call %struct.entry* @lookupino(i64 %37)
  store %struct.entry* %38, %struct.entry** %4, align 8
  %39 = icmp ne %struct.entry* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.entry*, %struct.entry** %4, align 8
  %42 = getelementptr inbounds %struct.entry, %struct.entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NEW, align 4
  %45 = load i32, i32* @EXTRACT, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %140

50:                                               ; preds = %40, %36
  %51 = call i32 (...) @skipfile()
  br label %17

52:                                               ; preds = %28
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %54 = load i64, i64* %3, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %58 = load i64, i64* @maxino, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @volno, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** @SKIP, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  %65 = call i32 @getvol(i64 0)
  %66 = call i32 (...) @skipmaps()
  %67 = call i32 (...) @skipdirs()
  br label %17

68:                                               ; preds = %60, %56, %52
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %70 = load i64, i64* @maxino, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %74 = call i64 @lowerbnd(i64 %73)
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %86, %72
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @volno, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %5, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ %83, %79 ]
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = call i32 (...) @skipfile()
  br label %75

88:                                               ; preds = %84
  %89 = load i32, i32* @volno, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %5, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = call i32 (...) @skipmaps()
  %95 = call i32 (...) @skipdirs()
  br label %17

96:                                               ; preds = %88
  br label %99

97:                                               ; preds = %68
  %98 = load i64, i64* %1, align 8
  store i64 %98, i64* %2, align 8
  br label %99

99:                                               ; preds = %97, %96
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i64, i64* %2, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load i64, i64* %2, align 8
  %106 = call %struct.entry* @lookupino(i64 %105)
  store %struct.entry* %106, %struct.entry** %4, align 8
  %107 = load %struct.entry*, %struct.entry** %4, align 8
  %108 = icmp eq %struct.entry* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, i32* @stderr, align 4
  %113 = load %struct.entry*, %struct.entry** %4, align 8
  %114 = call i8* @myname(%struct.entry* %113)
  %115 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* @NEW, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.entry*, %struct.entry** %4, align 8
  %119 = getelementptr inbounds %struct.entry, %struct.entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i64, i64* %2, align 8
  %123 = call i64 @lowerbnd(i64 %122)
  store i64 %123, i64* %2, align 8
  br label %100

124:                                              ; preds = %100
  %125 = load i64, i64* %2, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %124
  %129 = load i64, i64* %2, align 8
  %130 = load i64, i64* %3, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = load i64, i64* %2, align 8
  %134 = call %struct.entry* @lookupino(i64 %133)
  store %struct.entry* %134, %struct.entry** %4, align 8
  %135 = load %struct.entry*, %struct.entry** %4, align 8
  %136 = icmp eq %struct.entry* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %132
  br label %140

140:                                              ; preds = %139, %49
  %141 = load %struct.entry*, %struct.entry** %4, align 8
  %142 = call i8* @myname(%struct.entry* %141)
  %143 = call i32 @extractfile(i8* %142)
  %144 = load i32, i32* @NEW, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.entry*, %struct.entry** %4, align 8
  %147 = getelementptr inbounds %struct.entry, %struct.entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @volno, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %5, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %140
  %155 = call i32 (...) @skipmaps()
  br label %156

156:                                              ; preds = %154, %140
  br label %157

157:                                              ; preds = %156, %128, %124
  br label %17

158:                                              ; preds = %35, %27
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i32 @getvol(i64) #1

declare dso_local i32 @skipmaps(...) #1

declare dso_local i32 @skipdirs(...) #1

declare dso_local i64 @lowerbnd(i64) #1

declare dso_local i64 @upperbnd(i64) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i32 @skipfile(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @myname(%struct.entry*) #1

declare dso_local i32 @extractfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
