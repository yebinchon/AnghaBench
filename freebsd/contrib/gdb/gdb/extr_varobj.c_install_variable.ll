; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_install_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_install_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlist = type { %struct.varobj*, %struct.vlist* }
%struct.varobj = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.varobj* }

@VAROBJ_TABLE_SIZE = common dso_local global i32 0, align 4
@varobj_table = common dso_local global %struct.vlist** null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Duplicate variable object name\00", align 1
@rootlist = common dso_local global %struct.TYPE_2__* null, align 8
@rootcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varobj*)* @install_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_variable(%struct.varobj* %0) #0 {
  %2 = alloca %struct.varobj*, align 8
  %3 = alloca %struct.vlist*, align 8
  %4 = alloca %struct.vlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load %struct.varobj*, %struct.varobj** %2, align 8
  %9 = getelementptr inbounds %struct.varobj, %struct.varobj* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = mul i32 %17, %21
  %23 = add i32 %16, %22
  %24 = load i32, i32* @VAROBJ_TABLE_SIZE, align 4
  %25 = urem i32 %23, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.vlist**, %struct.vlist*** @varobj_table, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.vlist*, %struct.vlist** %30, i64 %32
  %34 = load %struct.vlist*, %struct.vlist** %33, align 8
  store %struct.vlist* %34, %struct.vlist** %3, align 8
  br label %35

35:                                               ; preds = %51, %29
  %36 = load %struct.vlist*, %struct.vlist** %3, align 8
  %37 = icmp ne %struct.vlist* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.vlist*, %struct.vlist** %3, align 8
  %40 = getelementptr inbounds %struct.vlist, %struct.vlist* %39, i32 0, i32 0
  %41 = load %struct.varobj*, %struct.varobj** %40, align 8
  %42 = getelementptr inbounds %struct.varobj, %struct.varobj* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.varobj*, %struct.varobj** %2, align 8
  %45 = getelementptr inbounds %struct.varobj, %struct.varobj* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %43, i8* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %38, %35
  %50 = phi i1 [ false, %35 ], [ %48, %38 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load %struct.vlist*, %struct.vlist** %3, align 8
  %53 = getelementptr inbounds %struct.vlist, %struct.vlist* %52, i32 0, i32 1
  %54 = load %struct.vlist*, %struct.vlist** %53, align 8
  store %struct.vlist* %54, %struct.vlist** %3, align 8
  br label %35

55:                                               ; preds = %49
  %56 = load %struct.vlist*, %struct.vlist** %3, align 8
  %57 = icmp ne %struct.vlist* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = call %struct.vlist* @xmalloc(i32 16)
  store %struct.vlist* %61, %struct.vlist** %4, align 8
  %62 = load %struct.vlist**, %struct.vlist*** @varobj_table, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vlist*, %struct.vlist** %62, i64 %64
  %66 = load %struct.vlist*, %struct.vlist** %65, align 8
  %67 = load %struct.vlist*, %struct.vlist** %4, align 8
  %68 = getelementptr inbounds %struct.vlist, %struct.vlist* %67, i32 0, i32 1
  store %struct.vlist* %66, %struct.vlist** %68, align 8
  %69 = load %struct.varobj*, %struct.varobj** %2, align 8
  %70 = load %struct.vlist*, %struct.vlist** %4, align 8
  %71 = getelementptr inbounds %struct.vlist, %struct.vlist* %70, i32 0, i32 0
  store %struct.varobj* %69, %struct.varobj** %71, align 8
  %72 = load %struct.vlist*, %struct.vlist** %4, align 8
  %73 = load %struct.vlist**, %struct.vlist*** @varobj_table, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vlist*, %struct.vlist** %73, i64 %75
  store %struct.vlist* %72, %struct.vlist** %76, align 8
  %77 = load %struct.varobj*, %struct.varobj** %2, align 8
  %78 = getelementptr inbounds %struct.varobj, %struct.varobj* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load %struct.varobj*, %struct.varobj** %80, align 8
  %82 = load %struct.varobj*, %struct.varobj** %2, align 8
  %83 = icmp eq %struct.varobj* %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %60
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rootlist, align 8
  %86 = icmp eq %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.varobj*, %struct.varobj** %2, align 8
  %89 = getelementptr inbounds %struct.varobj, %struct.varobj* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %91, align 8
  br label %98

92:                                               ; preds = %84
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rootlist, align 8
  %94 = load %struct.varobj*, %struct.varobj** %2, align 8
  %95 = getelementptr inbounds %struct.varobj, %struct.varobj* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %97, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.varobj*, %struct.varobj** %2, align 8
  %100 = getelementptr inbounds %struct.varobj, %struct.varobj* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  store %struct.TYPE_2__* %101, %struct.TYPE_2__** @rootlist, align 8
  %102 = load i32, i32* @rootcount, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @rootcount, align 4
  br label %104

104:                                              ; preds = %98, %60
  ret i32 1
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.vlist* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
