; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_devicename.c_uboot_parsedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_devicename.c_uboot_parsedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i8*, i32 }
%struct.uboot_devdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.devsw* }

@EINVAL = common dso_local global i32 0, align 4
@devsw = common dso_local global %struct.devsw** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EUNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uboot_devdesc**, i8*, i8**)* @uboot_parsedev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uboot_parsedev(%struct.uboot_devdesc** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uboot_devdesc**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.uboot_devdesc*, align 8
  %9 = alloca %struct.devsw*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uboot_devdesc** %0, %struct.uboot_devdesc*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %147

20:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store %struct.devsw* null, %struct.devsw** %9, align 8
  br label %21

21:                                               ; preds = %54, %20
  %22 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.devsw*, %struct.devsw** %22, i64 %24
  %26 = load %struct.devsw*, %struct.devsw** %25, align 8
  %27 = icmp ne %struct.devsw* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.devsw*, %struct.devsw** %30, i64 %32
  %34 = load %struct.devsw*, %struct.devsw** %33, align 8
  %35 = getelementptr inbounds %struct.devsw, %struct.devsw* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.devsw*, %struct.devsw** %37, i64 %39
  %41 = load %struct.devsw*, %struct.devsw** %40, align 8
  %42 = getelementptr inbounds %struct.devsw, %struct.devsw* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @strncmp(i8* %29, i8* %36, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %28
  %48 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.devsw*, %struct.devsw** %48, i64 %50
  %52 = load %struct.devsw*, %struct.devsw** %51, align 8
  store %struct.devsw* %52, %struct.devsw** %9, align 8
  br label %57

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %21

57:                                               ; preds = %47, %21
  %58 = load %struct.devsw*, %struct.devsw** %9, align 8
  %59 = icmp eq %struct.devsw* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %4, align 4
  br label %147

62:                                               ; preds = %57
  %63 = call %struct.uboot_devdesc* @malloc(i32 16)
  store %struct.uboot_devdesc* %63, %struct.uboot_devdesc** %8, align 8
  store i32 0, i32* %14, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.devsw*, %struct.devsw** %9, align 8
  %66 = getelementptr inbounds %struct.devsw, %struct.devsw* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  store i8* %70, i8** %11, align 8
  %71 = load %struct.devsw*, %struct.devsw** %9, align 8
  %72 = getelementptr inbounds %struct.devsw, %struct.devsw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %127 [
    i32 128, label %74
    i32 129, label %75
  ]

74:                                               ; preds = %62
  br label %129

75:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 58
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @strtol(i8* %86, i8** %10, i32 0)
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @EUNIT, align 4
  store i32 %92, i32* %14, align 4
  br label %143

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %80, %75
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 58
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %14, align 4
  br label %143

106:                                              ; preds = %99, %94
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.uboot_devdesc*, %struct.uboot_devdesc** %8, align 8
  %109 = getelementptr inbounds %struct.uboot_devdesc, %struct.uboot_devdesc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i8**, i8*** %7, align 8
  %112 = icmp ne i8** %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  br label %123

120:                                              ; preds = %113
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i8* [ %119, %118 ], [ %122, %120 ]
  %125 = load i8**, i8*** %7, align 8
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %123, %106
  br label %129

127:                                              ; preds = %62
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %14, align 4
  br label %143

129:                                              ; preds = %126, %74
  %130 = load %struct.devsw*, %struct.devsw** %9, align 8
  %131 = load %struct.uboot_devdesc*, %struct.uboot_devdesc** %8, align 8
  %132 = getelementptr inbounds %struct.uboot_devdesc, %struct.uboot_devdesc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store %struct.devsw* %130, %struct.devsw** %133, align 8
  %134 = load %struct.uboot_devdesc**, %struct.uboot_devdesc*** %5, align 8
  %135 = icmp eq %struct.uboot_devdesc** %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.uboot_devdesc*, %struct.uboot_devdesc** %8, align 8
  %138 = call i32 @free(%struct.uboot_devdesc* %137)
  br label %142

139:                                              ; preds = %129
  %140 = load %struct.uboot_devdesc*, %struct.uboot_devdesc** %8, align 8
  %141 = load %struct.uboot_devdesc**, %struct.uboot_devdesc*** %5, align 8
  store %struct.uboot_devdesc* %140, %struct.uboot_devdesc** %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  store i32 0, i32* %4, align 4
  br label %147

143:                                              ; preds = %127, %104, %91
  %144 = load %struct.uboot_devdesc*, %struct.uboot_devdesc** %8, align 8
  %145 = call i32 @free(%struct.uboot_devdesc* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %142, %60, %18
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.uboot_devdesc* @malloc(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.uboot_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
