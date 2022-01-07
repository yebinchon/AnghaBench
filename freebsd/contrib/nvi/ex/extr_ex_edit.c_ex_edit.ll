; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_edit.c_ex_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_edit.c_ex_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32*, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i32 }

@FR_TMPFILE = common dso_local global i32 0, align 4
@E_NEWSCREEN = common dso_local global i32 0, align 4
@cmds = common dso_local global i32* null, align 8
@C_VSPLIT = common dso_local global i64 0, align 8
@E_C_FORCE = common dso_local global i32 0, align 4
@FS_SETALT = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_edit(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %64 [
    i32 0, label %14
    i32 1, label %35
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = load i32, i32* @FR_TMPFILE, align 4
  %25 = call i64 @F_ISSET(%struct.TYPE_21__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22, %14
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call %struct.TYPE_21__* @file_add(%struct.TYPE_20__* %28, i8* null)
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %6, align 8
  %30 = icmp eq %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %124

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %34

33:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %32
  store i32 0, i32* %8, align 4
  br label %66

35:                                               ; preds = %2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %39, i64 0
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %46, i64 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @INT2CHAR(%struct.TYPE_20__* %36, i32 %43, i32 %51, i8* %52, i64 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call %struct.TYPE_21__* @file_add(%struct.TYPE_20__* %55, i8* %56)
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %6, align 8
  %58 = icmp eq %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %124

60:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @set_alt_name(%struct.TYPE_20__* %61, i8* %62)
  br label %66

64:                                               ; preds = %2
  %65 = call i32 (...) @abort() #3
  unreachable

66:                                               ; preds = %60, %34
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = load i32, i32* @E_NEWSCREEN, align 4
  %69 = call i64 @F_ISSET(%struct.TYPE_21__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** @cmds, align 8
  %76 = load i64, i64* @C_VSPLIT, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = icmp eq i32* %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71, %66
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @ex_N_edit(%struct.TYPE_20__* %80, %struct.TYPE_21__* %81, %struct.TYPE_21__* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %124

85:                                               ; preds = %71
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @E_C_FORCE, align 4
  %91 = call i64 @FL_ISSET(i32 %89, i32 %90)
  %92 = call i64 @file_m2(%struct.TYPE_20__* %86, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %124

95:                                               ; preds = %85
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @FS_SETALT, align 4
  br label %103

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @E_C_FORCE, align 4
  %109 = call i64 @FL_ISSET(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @FS_FORCE, align 4
  br label %114

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ]
  %116 = or i32 %104, %115
  %117 = call i64 @file_init(%struct.TYPE_20__* %96, %struct.TYPE_21__* %97, i32* null, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %124

120:                                              ; preds = %114
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = load i32, i32* @SC_FSWITCH, align 4
  %123 = call i32 @F_SET(%struct.TYPE_20__* %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %119, %94, %79, %59, %31
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @file_add(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_20__*, i32, i32, i8*, i64) #1

declare dso_local i32 @set_alt_name(%struct.TYPE_20__*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ex_N_edit(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @file_m2(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i64 @file_init(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
