; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/vacation/extr_vacation.c_listdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/vacation/extr_vacation.c_listdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_13__**, i32)* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_13__*)* }
%struct.TYPE_12__ = type { i32, i64 }

@Db = common dso_local global %struct.TYPE_14__* null, align 8
@SMDBE_OK = common dso_local global i32 0, align 4
@smioerr = common dso_local global i32 0, align 4
@SM_TIME_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vacation: set cursor: %s\0A\00", align 1
@SMDB_CURSOR_GET_NEXT = common dso_local global i32 0, align 4
@VIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vacation: %.*s invalid time stamp\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"(exclusion)\0A\00", align 1
@smioout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%-40.*s %-10s\00", align 1
@SMDBE_LAST_ENTRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"vacation: get value at cursor: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @listdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listdb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  %7 = call i32 @memset(%struct.TYPE_12__* %4, i8 signext 0, i32 16)
  %8 = call i32 @memset(%struct.TYPE_12__* %5, i8 signext 0, i32 16)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Db, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__**, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__**, i32)** %10, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Db, align 8
  %13 = call i32 %11(%struct.TYPE_14__* %12, %struct.TYPE_13__** %3, i32 0)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @SMDBE_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i32, i32* @smioerr, align 4
  %19 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @sm_errstring(i32 %20)
  %22 = call i32 (i32, i32, i8*, i32, ...) @sm_io_fprintf(i32 %18, i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %121

23:                                               ; preds = %0
  br label %24

24:                                               ; preds = %80, %56, %50, %23
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)** %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = load i32, i32* @SMDB_CURSOR_GET_NEXT, align 4
  %30 = call i32 %27(%struct.TYPE_13__* %28, %struct.TYPE_12__* %4, %struct.TYPE_12__* %5, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @SMDBE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VIT, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* @VIT, align 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = call i64 @strncmp(i8* %43, i32 %44, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %24

51:                                               ; preds = %40, %33
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 8
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* @smioerr, align 4
  %58 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 (i32, i32, i8*, i32, ...) @sm_io_fprintf(i32 %57, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60, i8* %63)
  br label %24

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy(i64* %2, i64 %67, i32 8)
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 40
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 40, i32* %73, align 8
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i64, i64* %2, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %80

78:                                               ; preds = %74
  %79 = call i8* @ctime(i64* %2)
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i32, i32* @smioout, align 4
  %82 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (i32, i32, i8*, i32, ...) @sm_io_fprintf(i32 %81, i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %84, i8* %87, i8* %88)
  %90 = call i32 @memset(%struct.TYPE_12__* %4, i8 signext 0, i32 16)
  %91 = call i32 @memset(%struct.TYPE_12__* %5, i8 signext 0, i32 16)
  br label %24

92:                                               ; preds = %24
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @SMDBE_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @SMDBE_LAST_ENTRY, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i32, i32* @smioerr, align 4
  %102 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @sm_errstring(i32 %103)
  %105 = call i32 (i32, i32, i8*, i32, ...) @sm_io_fprintf(i32 %101, i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = call i32 %111(%struct.TYPE_13__* %112)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %114

114:                                              ; preds = %108, %100
  br label %121

115:                                              ; preds = %96, %92
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = call i32 %118(%struct.TYPE_13__* %119)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %121

121:                                              ; preds = %115, %114, %17
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i8 signext, i32) #1

declare dso_local i32 @sm_io_fprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @sm_errstring(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i8* @ctime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
