; ModuleID = '/home/carl/AnghaBench/freebsd/stand/mips/beri/loader/extr_devicename.c_beri_arch_parsedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/mips/beri/loader/extr_devicename.c_beri_arch_parsedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i8*, i32 }
%struct.disk_devdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.devsw* }

@EINVAL = common dso_local global i32 0, align 4
@devsw = common dso_local global %struct.devsw** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EUNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk_devdesc**, i8*, i8**)* @beri_arch_parsedev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_arch_parsedev(%struct.disk_devdesc** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_devdesc**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.disk_devdesc*, align 8
  %9 = alloca %struct.devsw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.disk_devdesc** %0, %struct.disk_devdesc*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %158

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store %struct.devsw* null, %struct.devsw** %9, align 8
  br label %21

21:                                               ; preds = %54, %20
  %22 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.devsw*, %struct.devsw** %22, i64 %24
  %26 = load %struct.devsw*, %struct.devsw** %25, align 8
  %27 = icmp ne %struct.devsw* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.devsw*, %struct.devsw** %30, i64 %32
  %34 = load %struct.devsw*, %struct.devsw** %33, align 8
  %35 = getelementptr inbounds %struct.devsw, %struct.devsw* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %38 = load i32, i32* %10, align 4
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
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.devsw*, %struct.devsw** %48, i64 %50
  %52 = load %struct.devsw*, %struct.devsw** %51, align 8
  store %struct.devsw* %52, %struct.devsw** %9, align 8
  br label %57

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %21

57:                                               ; preds = %47, %21
  %58 = load %struct.devsw*, %struct.devsw** %9, align 8
  %59 = icmp eq %struct.devsw* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %4, align 4
  br label %158

62:                                               ; preds = %57
  %63 = call %struct.disk_devdesc* @malloc(i32 16)
  store %struct.disk_devdesc* %63, %struct.disk_devdesc** %8, align 8
  store i32 0, i32* %12, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.devsw*, %struct.devsw** %9, align 8
  %66 = getelementptr inbounds %struct.devsw, %struct.devsw* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  store i8* %70, i8** %14, align 8
  %71 = load %struct.devsw*, %struct.devsw** %9, align 8
  %72 = getelementptr inbounds %struct.devsw, %struct.devsw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %138 [
    i32 129, label %74
    i32 131, label %75
    i32 132, label %84
    i32 130, label %84
    i32 128, label %84
  ]

74:                                               ; preds = %62
  br label %140

75:                                               ; preds = %62
  %76 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i8**, i8*** %7, align 8
  %79 = call i32 @disk_parsedev(%struct.disk_devdesc* %76, i8* %77, i8** %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %154

83:                                               ; preds = %75
  br label %140

84:                                               ; preds = %62, %62, %62
  store i32 0, i32* %11, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 58
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @strtol(i8* %95, i8** %13, i32 0)
  store i32 %96, i32* %11, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @EUNIT, align 4
  store i32 %101, i32* %12, align 4
  br label %154

102:                                              ; preds = %94
  br label %105

103:                                              ; preds = %89, %84
  %104 = load i32, i32* @EUNIT, align 4
  store i32 %104, i32* %12, align 4
  br label %154

105:                                              ; preds = %102
  %106 = load i8*, i8** %13, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i8*, i8** %13, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 58
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %12, align 4
  br label %154

117:                                              ; preds = %110, %105
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %120 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load i8**, i8*** %7, align 8
  %123 = icmp ne i8** %122, null
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i8*, i8** %13, align 8
  br label %134

131:                                              ; preds = %124
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i8* [ %130, %129 ], [ %133, %131 ]
  %136 = load i8**, i8*** %7, align 8
  store i8* %135, i8** %136, align 8
  br label %137

137:                                              ; preds = %134, %117
  br label %140

138:                                              ; preds = %62
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %12, align 4
  br label %154

140:                                              ; preds = %137, %83, %74
  %141 = load %struct.devsw*, %struct.devsw** %9, align 8
  %142 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %143 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store %struct.devsw* %141, %struct.devsw** %144, align 8
  %145 = load %struct.disk_devdesc**, %struct.disk_devdesc*** %5, align 8
  %146 = icmp eq %struct.disk_devdesc** %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %149 = call i32 @free(%struct.disk_devdesc* %148)
  br label %153

150:                                              ; preds = %140
  %151 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %152 = load %struct.disk_devdesc**, %struct.disk_devdesc*** %5, align 8
  store %struct.disk_devdesc* %151, %struct.disk_devdesc** %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  store i32 0, i32* %4, align 4
  br label %158

154:                                              ; preds = %138, %115, %103, %100, %82
  %155 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %156 = call i32 @free(%struct.disk_devdesc* %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %154, %153, %60, %18
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.disk_devdesc* @malloc(i32) #1

declare dso_local i32 @disk_parsedev(%struct.disk_devdesc*, i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
