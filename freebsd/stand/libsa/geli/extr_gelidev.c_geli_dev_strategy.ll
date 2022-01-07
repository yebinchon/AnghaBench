; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_gelidev.c_geli_dev_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_gelidev.c_geli_dev_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geli_devdesc = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32, i64, i64, i8*, i32*)* }

@F_MASK = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @geli_dev_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geli_dev_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.geli_devdesc*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @F_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @F_READ, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %28, i32* %7, align 4
  br label %133

29:                                               ; preds = %6
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to %struct.geli_devdesc*
  store %struct.geli_devdesc* %31, %struct.geli_devdesc** %14, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @DEV_BSIZE, align 8
  %34 = mul i64 %32, %33
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %18, align 8
  %39 = load %struct.geli_devdesc*, %struct.geli_devdesc** %14, align 8
  %40 = getelementptr inbounds %struct.geli_devdesc, %struct.geli_devdesc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @rounddown2(i64 %38, i32 %45)
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load %struct.geli_devdesc*, %struct.geli_devdesc** %14, align 8
  %49 = getelementptr inbounds %struct.geli_devdesc, %struct.geli_devdesc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @roundup2(i64 %47, i32 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %16, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %29
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %20, align 8
  br label %71

64:                                               ; preds = %29
  %65 = load i64, i64* %19, align 8
  %66 = call i8* @malloc(i64 %65)
  store i8* %66, i8** %20, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %7, align 4
  br label %133

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %62
  %72 = load %struct.geli_devdesc*, %struct.geli_devdesc** %14, align 8
  %73 = getelementptr inbounds %struct.geli_devdesc, %struct.geli_devdesc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_9__*, i32, i64, i64, i8*, i32*)*, i32 (%struct.TYPE_9__*, i32, i64, i64, i8*, i32*)** %78, align 8
  %80 = load %struct.geli_devdesc*, %struct.geli_devdesc** %14, align 8
  %81 = getelementptr inbounds %struct.geli_devdesc, %struct.geli_devdesc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @DEV_BSIZE, align 8
  %86 = udiv i64 %84, %85
  %87 = load i64, i64* %19, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = call i32 %79(%struct.TYPE_9__* %82, i32 %83, i64 %86, i64 %87, i8* %88, i32* null)
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %21, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %124

93:                                               ; preds = %71
  %94 = load %struct.geli_devdesc*, %struct.geli_devdesc** %14, align 8
  %95 = getelementptr inbounds %struct.geli_devdesc, %struct.geli_devdesc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = load i64, i64* %19, align 8
  %100 = call i32 @geli_read(%struct.TYPE_10__* %96, i64 %97, i8* %98, i64 %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %124

104:                                              ; preds = %93
  %105 = load i8*, i8** %20, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %20, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %16, align 8
  %113 = sub i64 %111, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @memcpy(i8* %109, i8* %114, i64 %115)
  br label %117

117:                                              ; preds = %108, %104
  %118 = load i64*, i64** %13, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = load i64*, i64** %13, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %103, %92
  %125 = load i8*, i8** %20, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ne i8* %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i8*, i8** %20, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* %21, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %68, %27
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @geli_read(%struct.TYPE_10__*, i64, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
