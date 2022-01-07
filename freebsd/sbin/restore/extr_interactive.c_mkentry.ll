; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_mkentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_mkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i32, i32, i32 }
%struct.afile = type { i8*, i32, i8, i8, i32 }
%struct.entry = type { i32 }

@vflag = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@dumpmap = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Warning: undefined file type %d\0A\00", align 1
@NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.direct*, %struct.afile*)* @mkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkentry(i8* %0, %struct.direct* %1, %struct.afile* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.direct*, align 8
  %6 = alloca %struct.afile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.entry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.direct* %1, %struct.direct** %5, align 8
  store %struct.afile* %2, %struct.afile** %6, align 8
  %9 = load %struct.direct*, %struct.direct** %5, align 8
  %10 = getelementptr inbounds %struct.direct, %struct.direct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.afile*, %struct.afile** %6, align 8
  %13 = getelementptr inbounds %struct.afile, %struct.afile* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.direct*, %struct.direct** %5, align 8
  %15 = getelementptr inbounds %struct.direct, %struct.direct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @savename(i32 %16)
  %18 = load %struct.afile*, %struct.afile** %6, align 8
  %19 = getelementptr inbounds %struct.afile, %struct.afile* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.afile*, %struct.afile** %6, align 8
  %21 = getelementptr inbounds %struct.afile, %struct.afile* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %38, %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* @vflag, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isprint(i8 zeroext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  store i8 63, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %30, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.afile*, %struct.afile** %6, align 8
  %44 = getelementptr inbounds %struct.afile, %struct.afile* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.afile*, %struct.afile** %6, align 8
  %51 = getelementptr inbounds %struct.afile, %struct.afile* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @dflag, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load %struct.afile*, %struct.afile** %6, align 8
  %56 = getelementptr inbounds %struct.afile, %struct.afile* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @dumpmap, align 4
  %59 = call i64 @TSTINO(i32 %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.afile*, %struct.afile** %6, align 8
  %63 = getelementptr inbounds %struct.afile, %struct.afile* %62, i32 0, i32 2
  store i8 94, i8* %63, align 4
  br label %82

64:                                               ; preds = %54, %41
  %65 = load i8*, i8** %4, align 8
  %66 = call %struct.entry* @lookupname(i8* %65)
  store %struct.entry* %66, %struct.entry** %8, align 8
  %67 = icmp ne %struct.entry* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load %struct.entry*, %struct.entry** %8, align 8
  %70 = getelementptr inbounds %struct.entry, %struct.entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NEW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.afile*, %struct.afile** %6, align 8
  %77 = getelementptr inbounds %struct.afile, %struct.afile* %76, i32 0, i32 2
  store i8 42, i8* %77, align 4
  br label %81

78:                                               ; preds = %68, %64
  %79 = load %struct.afile*, %struct.afile** %6, align 8
  %80 = getelementptr inbounds %struct.afile, %struct.afile* %79, i32 0, i32 2
  store i8 32, i8* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %61
  %83 = load %struct.direct*, %struct.direct** %5, align 8
  %84 = getelementptr inbounds %struct.direct, %struct.direct* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %86 [
    i32 131, label %92
    i32 132, label %95
    i32 133, label %98
    i32 130, label %98
    i32 135, label %101
    i32 136, label %101
    i32 128, label %104
    i32 129, label %107
    i32 134, label %107
  ]

86:                                               ; preds = %82
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.direct*, %struct.direct** %5, align 8
  %89 = getelementptr inbounds %struct.direct, %struct.direct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %82, %86
  %93 = load %struct.afile*, %struct.afile** %6, align 8
  %94 = getelementptr inbounds %struct.afile, %struct.afile* %93, i32 0, i32 3
  store i8 32, i8* %94, align 1
  br label %121

95:                                               ; preds = %82
  %96 = load %struct.afile*, %struct.afile** %6, align 8
  %97 = getelementptr inbounds %struct.afile, %struct.afile* %96, i32 0, i32 3
  store i8 64, i8* %97, align 1
  br label %121

98:                                               ; preds = %82, %82
  %99 = load %struct.afile*, %struct.afile** %6, align 8
  %100 = getelementptr inbounds %struct.afile, %struct.afile* %99, i32 0, i32 3
  store i8 61, i8* %100, align 1
  br label %121

101:                                              ; preds = %82, %82
  %102 = load %struct.afile*, %struct.afile** %6, align 8
  %103 = getelementptr inbounds %struct.afile, %struct.afile* %102, i32 0, i32 3
  store i8 35, i8* %103, align 1
  br label %121

104:                                              ; preds = %82
  %105 = load %struct.afile*, %struct.afile** %6, align 8
  %106 = getelementptr inbounds %struct.afile, %struct.afile* %105, i32 0, i32 3
  store i8 37, i8* %106, align 1
  br label %121

107:                                              ; preds = %82, %82
  %108 = load %struct.direct*, %struct.direct** %5, align 8
  %109 = getelementptr inbounds %struct.direct, %struct.direct* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @inodetype(i32 %110)
  %112 = load i32, i32* @NODE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.afile*, %struct.afile** %6, align 8
  %116 = getelementptr inbounds %struct.afile, %struct.afile* %115, i32 0, i32 3
  store i8 47, i8* %116, align 1
  br label %120

117:                                              ; preds = %107
  %118 = load %struct.afile*, %struct.afile** %6, align 8
  %119 = getelementptr inbounds %struct.afile, %struct.afile* %118, i32 0, i32 3
  store i8 32, i8* %119, align 1
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %104, %101, %98, %95, %92
  ret void
}

declare dso_local i8* @savename(i32) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i64 @TSTINO(i32, i32) #1

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @inodetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
