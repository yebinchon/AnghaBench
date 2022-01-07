; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_uninstall_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_uninstall_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlist = type { %struct.vlist*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.varobj_root = type { %struct.varobj_root*, %struct.varobj* }
%struct.varobj = type { i8*, %struct.varobj_root* }

@VAROBJ_TABLE_SIZE = common dso_local global i32 0, align 4
@varobj_table = common dso_local global %struct.vlist** null, align 8
@varobjdebug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Deleting %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Assertion failed: Could not find variable object \22%s\22 to delete\00", align 1
@rootlist = common dso_local global %struct.varobj_root* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Assertion failed: Could not find varobj \22%s\22 in root list\00", align 1
@rootcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varobj*)* @uninstall_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninstall_variable(%struct.varobj* %0) #0 {
  %2 = alloca %struct.varobj*, align 8
  %3 = alloca %struct.vlist*, align 8
  %4 = alloca %struct.vlist*, align 8
  %5 = alloca %struct.varobj_root*, align 8
  %6 = alloca %struct.varobj_root*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.varobj*, %struct.varobj** %2, align 8
  %11 = getelementptr inbounds %struct.varobj, %struct.varobj* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = mul i32 %19, %23
  %25 = add i32 %18, %24
  %26 = load i32, i32* @VAROBJ_TABLE_SIZE, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.vlist**, %struct.vlist*** @varobj_table, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vlist*, %struct.vlist** %32, i64 %34
  %36 = load %struct.vlist*, %struct.vlist** %35, align 8
  store %struct.vlist* %36, %struct.vlist** %3, align 8
  store %struct.vlist* null, %struct.vlist** %4, align 8
  br label %37

37:                                               ; preds = %53, %31
  %38 = load %struct.vlist*, %struct.vlist** %3, align 8
  %39 = icmp ne %struct.vlist* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.vlist*, %struct.vlist** %3, align 8
  %42 = getelementptr inbounds %struct.vlist, %struct.vlist* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.varobj*, %struct.varobj** %2, align 8
  %47 = getelementptr inbounds %struct.varobj, %struct.varobj* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i32 %45, i8* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi i1 [ false, %37 ], [ %50, %40 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load %struct.vlist*, %struct.vlist** %3, align 8
  store %struct.vlist* %54, %struct.vlist** %4, align 8
  %55 = load %struct.vlist*, %struct.vlist** %3, align 8
  %56 = getelementptr inbounds %struct.vlist, %struct.vlist* %55, i32 0, i32 0
  %57 = load %struct.vlist*, %struct.vlist** %56, align 8
  store %struct.vlist* %57, %struct.vlist** %3, align 8
  br label %37

58:                                               ; preds = %51
  %59 = load i64, i64* @varobjdebug, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @gdb_stdlog, align 4
  %63 = load %struct.varobj*, %struct.varobj** %2, align 8
  %64 = getelementptr inbounds %struct.varobj, %struct.varobj* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @fprintf_unfiltered(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.vlist*, %struct.vlist** %3, align 8
  %69 = icmp eq %struct.vlist* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.varobj*, %struct.varobj** %2, align 8
  %72 = getelementptr inbounds %struct.varobj, %struct.varobj* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %154

75:                                               ; preds = %67
  %76 = load %struct.vlist*, %struct.vlist** %4, align 8
  %77 = icmp eq %struct.vlist* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.vlist*, %struct.vlist** %3, align 8
  %80 = getelementptr inbounds %struct.vlist, %struct.vlist* %79, i32 0, i32 0
  %81 = load %struct.vlist*, %struct.vlist** %80, align 8
  %82 = load %struct.vlist**, %struct.vlist*** @varobj_table, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.vlist*, %struct.vlist** %82, i64 %84
  store %struct.vlist* %81, %struct.vlist** %85, align 8
  br label %92

86:                                               ; preds = %75
  %87 = load %struct.vlist*, %struct.vlist** %3, align 8
  %88 = getelementptr inbounds %struct.vlist, %struct.vlist* %87, i32 0, i32 0
  %89 = load %struct.vlist*, %struct.vlist** %88, align 8
  %90 = load %struct.vlist*, %struct.vlist** %4, align 8
  %91 = getelementptr inbounds %struct.vlist, %struct.vlist* %90, i32 0, i32 0
  store %struct.vlist* %89, %struct.vlist** %91, align 8
  br label %92

92:                                               ; preds = %86, %78
  %93 = load %struct.vlist*, %struct.vlist** %3, align 8
  %94 = call i32 @xfree(%struct.vlist* %93)
  %95 = load %struct.varobj*, %struct.varobj** %2, align 8
  %96 = getelementptr inbounds %struct.varobj, %struct.varobj* %95, i32 0, i32 1
  %97 = load %struct.varobj_root*, %struct.varobj_root** %96, align 8
  %98 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %97, i32 0, i32 1
  %99 = load %struct.varobj*, %struct.varobj** %98, align 8
  %100 = load %struct.varobj*, %struct.varobj** %2, align 8
  %101 = icmp eq %struct.varobj* %99, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %92
  %103 = load %struct.varobj_root*, %struct.varobj_root** @rootlist, align 8
  %104 = load %struct.varobj*, %struct.varobj** %2, align 8
  %105 = getelementptr inbounds %struct.varobj, %struct.varobj* %104, i32 0, i32 1
  %106 = load %struct.varobj_root*, %struct.varobj_root** %105, align 8
  %107 = icmp eq %struct.varobj_root* %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.varobj*, %struct.varobj** %2, align 8
  %110 = getelementptr inbounds %struct.varobj, %struct.varobj* %109, i32 0, i32 1
  %111 = load %struct.varobj_root*, %struct.varobj_root** %110, align 8
  %112 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %111, i32 0, i32 0
  %113 = load %struct.varobj_root*, %struct.varobj_root** %112, align 8
  store %struct.varobj_root* %113, %struct.varobj_root** @rootlist, align 8
  br label %151

114:                                              ; preds = %102
  store %struct.varobj_root* null, %struct.varobj_root** %6, align 8
  %115 = load %struct.varobj_root*, %struct.varobj_root** @rootlist, align 8
  store %struct.varobj_root* %115, %struct.varobj_root** %5, align 8
  br label %116

116:                                              ; preds = %127, %114
  %117 = load %struct.varobj_root*, %struct.varobj_root** %5, align 8
  %118 = icmp ne %struct.varobj_root* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.varobj_root*, %struct.varobj_root** %5, align 8
  %121 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %120, i32 0, i32 1
  %122 = load %struct.varobj*, %struct.varobj** %121, align 8
  %123 = load %struct.varobj*, %struct.varobj** %2, align 8
  %124 = icmp ne %struct.varobj* %122, %123
  br label %125

125:                                              ; preds = %119, %116
  %126 = phi i1 [ false, %116 ], [ %124, %119 ]
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = load %struct.varobj_root*, %struct.varobj_root** %5, align 8
  store %struct.varobj_root* %128, %struct.varobj_root** %6, align 8
  %129 = load %struct.varobj_root*, %struct.varobj_root** %5, align 8
  %130 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %129, i32 0, i32 0
  %131 = load %struct.varobj_root*, %struct.varobj_root** %130, align 8
  store %struct.varobj_root* %131, %struct.varobj_root** %5, align 8
  br label %116

132:                                              ; preds = %125
  %133 = load %struct.varobj_root*, %struct.varobj_root** %5, align 8
  %134 = icmp eq %struct.varobj_root* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.varobj*, %struct.varobj** %2, align 8
  %137 = getelementptr inbounds %struct.varobj, %struct.varobj* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  br label %154

140:                                              ; preds = %132
  %141 = load %struct.varobj_root*, %struct.varobj_root** %6, align 8
  %142 = icmp eq %struct.varobj_root* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store %struct.varobj_root* null, %struct.varobj_root** @rootlist, align 8
  br label %150

144:                                              ; preds = %140
  %145 = load %struct.varobj_root*, %struct.varobj_root** %5, align 8
  %146 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %145, i32 0, i32 0
  %147 = load %struct.varobj_root*, %struct.varobj_root** %146, align 8
  %148 = load %struct.varobj_root*, %struct.varobj_root** %6, align 8
  %149 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %148, i32 0, i32 0
  store %struct.varobj_root* %147, %struct.varobj_root** %149, align 8
  br label %150

150:                                              ; preds = %144, %143
  br label %151

151:                                              ; preds = %150, %108
  %152 = load i32, i32* @rootcount, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* @rootcount, align 4
  br label %154

154:                                              ; preds = %70, %135, %151, %92
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @xfree(%struct.vlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
