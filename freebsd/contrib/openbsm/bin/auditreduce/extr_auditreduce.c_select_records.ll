; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@opttochk = common dso_local global i32 0, align 4
@OPT_v = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @select_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_records(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %106, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @au_read_rec(i32* %13, i32** %4)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %109

16:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %66, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %73

26:                                               ; preds = %24
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %31, %32
  %34 = call i32 @au_fetch_tok(%struct.TYPE_16__* %5, i32* %30, i32 %33)
  %35 = icmp eq i32 -1, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %73

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %65 [
    i32 133, label %40
    i32 130, label %43
    i32 128, label %45
    i32 132, label %47
    i32 131, label %57
    i32 129, label %63
  ]

40:                                               ; preds = %37
  %41 = call i32 @select_hdr32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %5, i32* %9)
  store i32 %41, i32* %8, align 4
  %42 = call i32 @bcopy(%struct.TYPE_16__* %5, %struct.TYPE_16__* %3, i32 32)
  br label %66

43:                                               ; preds = %37
  %44 = call i32 @select_proc32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %5, i32* %9)
  store i32 %44, i32* %8, align 4
  br label %66

45:                                               ; preds = %37
  %46 = call i32 @select_subj32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %5, i32* %9)
  store i32 %46, i32* %8, align 4
  br label %66

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @select_ipcobj(i32 %51, i32 %55, i32* %9)
  store i32 %56, i32* %8, align 4
  br label %66

57:                                               ; preds = %37
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @select_filepath(i32 %61, i32* %9)
  store i32 %62, i32* %8, align 4
  br label %66

63:                                               ; preds = %37
  %64 = call i32 @select_return32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %5, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %3, i32* %9)
  store i32 %64, i32* %8, align 4
  br label %66

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %63, %57, %47, %45, %43, %40
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  br label %17

73:                                               ; preds = %36, %24
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @opttochk, align 4
  %81 = load i32, i32* %9, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %79, %76, %73
  %87 = phi i1 [ false, %76 ], [ false, %73 ], [ %85, %79 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @opttochk, align 4
  %90 = load i32, i32* @OPT_v, align 4
  %91 = call i64 @ISOPTSET(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %93, %86
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @fwrite(i32* %102, i32 1, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @free(i32* %107)
  br label %12

109:                                              ; preds = %12
  ret i32 0
}

declare dso_local i32 @au_read_rec(i32*, i32**) #1

declare dso_local i32 @au_fetch_tok(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @select_hdr32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, i32*) #1

declare dso_local i32 @bcopy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @select_proc32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, i32*) #1

declare dso_local i32 @select_subj32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, i32*) #1

declare dso_local i32 @select_ipcobj(i32, i32, i32*) #1

declare dso_local i32 @select_filepath(i32, i32*) #1

declare dso_local i32 @select_return32(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, i32*) #1

declare dso_local i64 @ISOPTSET(i32, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
