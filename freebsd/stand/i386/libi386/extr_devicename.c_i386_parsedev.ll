; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_devicename.c_i386_parsedev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_devicename.c_i386_parsedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i8*, i32 }
%struct.i386_devdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.devsw* }
%struct.disk_devdesc = type { i32 }
%struct.zfs_devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@devsw = common dso_local global %struct.devsw** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EUNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i386_devdesc**, i8*, i8**)* @i386_parsedev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_parsedev(%struct.i386_devdesc** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i386_devdesc**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.i386_devdesc*, align 8
  %9 = alloca %struct.devsw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.i386_devdesc** %0, %struct.i386_devdesc*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %183

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
  br label %183

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.devsw*, %struct.devsw** %9, align 8
  %65 = getelementptr inbounds %struct.devsw, %struct.devsw* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8* %69, i8** %14, align 8
  store %struct.i386_devdesc* null, %struct.i386_devdesc** %8, align 8
  store i32 0, i32* %12, align 4
  %70 = load %struct.devsw*, %struct.devsw** %9, align 8
  %71 = getelementptr inbounds %struct.devsw, %struct.devsw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %106 [
    i32 129, label %73
    i32 130, label %74
    i32 128, label %90
  ]

73:                                               ; preds = %62
  br label %165

74:                                               ; preds = %62
  %75 = call %struct.i386_devdesc* @malloc(i32 16)
  store %struct.i386_devdesc* %75, %struct.i386_devdesc** %8, align 8
  %76 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %77 = icmp eq %struct.i386_devdesc* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %4, align 4
  br label %183

80:                                               ; preds = %74
  %81 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %82 = bitcast %struct.i386_devdesc* %81 to %struct.disk_devdesc*
  %83 = load i8*, i8** %14, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = call i32 @disk_parsedev(%struct.disk_devdesc* %82, i8* %83, i8** %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %179

89:                                               ; preds = %80
  br label %165

90:                                               ; preds = %62
  %91 = call %struct.i386_devdesc* @malloc(i32 4)
  store %struct.i386_devdesc* %91, %struct.i386_devdesc** %8, align 8
  %92 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %93 = icmp eq %struct.i386_devdesc* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @ENOMEM, align 4
  store i32 %95, i32* %4, align 4
  br label %183

96:                                               ; preds = %90
  %97 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %98 = bitcast %struct.i386_devdesc* %97 to %struct.zfs_devdesc*
  %99 = load i8*, i8** %14, align 8
  %100 = load i8**, i8*** %7, align 8
  %101 = call i32 @zfs_parsedev(%struct.zfs_devdesc* %98, i8* %99, i8** %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %179

105:                                              ; preds = %96
  br label %165

106:                                              ; preds = %62
  %107 = call %struct.i386_devdesc* @malloc(i32 4)
  store %struct.i386_devdesc* %107, %struct.i386_devdesc** %8, align 8
  %108 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %109 = icmp eq %struct.i386_devdesc* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @ENOMEM, align 4
  store i32 %111, i32* %4, align 4
  br label %183

112:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load i8*, i8** %14, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 58
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 @strtol(i8* %124, i8** %13, i32 0)
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @EUNIT, align 4
  store i32 %130, i32* %12, align 4
  br label %179

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %118, %112
  %133 = load i8*, i8** %13, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i8*, i8** %13, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 58
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %12, align 4
  br label %179

144:                                              ; preds = %137, %132
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %147 = getelementptr inbounds %struct.i386_devdesc, %struct.i386_devdesc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load i8**, i8*** %7, align 8
  %150 = icmp ne i8** %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = load i8*, i8** %13, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i8*, i8** %13, align 8
  br label %161

158:                                              ; preds = %151
  %159 = load i8*, i8** %13, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  br label %161

161:                                              ; preds = %158, %156
  %162 = phi i8* [ %157, %156 ], [ %160, %158 ]
  %163 = load i8**, i8*** %7, align 8
  store i8* %162, i8** %163, align 8
  br label %164

164:                                              ; preds = %161, %144
  br label %165

165:                                              ; preds = %164, %105, %89, %73
  %166 = load %struct.devsw*, %struct.devsw** %9, align 8
  %167 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %168 = getelementptr inbounds %struct.i386_devdesc, %struct.i386_devdesc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store %struct.devsw* %166, %struct.devsw** %169, align 8
  %170 = load %struct.i386_devdesc**, %struct.i386_devdesc*** %5, align 8
  %171 = icmp ne %struct.i386_devdesc** %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %174 = load %struct.i386_devdesc**, %struct.i386_devdesc*** %5, align 8
  store %struct.i386_devdesc* %173, %struct.i386_devdesc** %174, align 8
  br label %178

175:                                              ; preds = %165
  %176 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %177 = call i32 @free(%struct.i386_devdesc* %176)
  br label %178

178:                                              ; preds = %175, %172
  store i32 0, i32* %4, align 4
  br label %183

179:                                              ; preds = %142, %129, %104, %88
  %180 = load %struct.i386_devdesc*, %struct.i386_devdesc** %8, align 8
  %181 = call i32 @free(%struct.i386_devdesc* %180)
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %179, %178, %110, %94, %78, %60, %18
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.i386_devdesc* @malloc(i32) #1

declare dso_local i32 @disk_parsedev(%struct.disk_devdesc*, i8*, i8**) #1

declare dso_local i32 @zfs_parsedev(%struct.zfs_devdesc*, i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.i386_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
