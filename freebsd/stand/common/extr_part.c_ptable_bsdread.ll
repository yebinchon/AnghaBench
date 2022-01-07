; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_part.c_ptable_bsdread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_part.c_ptable_bsdread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptable = type { i32, i32, i32 }
%struct.disklabel = type { i64, i64, i64, i32, %struct.partition* }
%struct.partition = type { i64, i64, i32 }
%struct.pentry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Too small sectorsize\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@DISKMAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unsupported sector size\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid number of partitions\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"BSD detected\00", align 1
@RAW_PART = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"new BSD partition added\00", align 1
@PTABLE_BSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ptable* (%struct.ptable*, i8*, i64 (i8*, i32*, i32, i32)*)* @ptable_bsdread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ptable* @ptable_bsdread(%struct.ptable* %0, i8* %1, i64 (i8*, i32*, i32, i32)* %2) #0 {
  %4 = alloca %struct.ptable*, align 8
  %5 = alloca %struct.ptable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i32*, i32, i32)*, align 8
  %8 = alloca %struct.disklabel*, align 8
  %9 = alloca %struct.partition*, align 8
  %10 = alloca %struct.pentry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ptable* %0, %struct.ptable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i32*, i32, i32)* %2, i64 (i8*, i32*, i32, i32)** %7, align 8
  %14 = load %struct.ptable*, %struct.ptable** %5, align 8
  %15 = getelementptr inbounds %struct.ptable, %struct.ptable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 40
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ptable*, %struct.ptable** %5, align 8
  store %struct.ptable* %21, %struct.ptable** %4, align 8
  br label %183

22:                                               ; preds = %3
  %23 = load %struct.ptable*, %struct.ptable** %5, align 8
  %24 = getelementptr inbounds %struct.ptable, %struct.ptable* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @malloc(i32 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load %struct.ptable*, %struct.ptable** %5, align 8
  store %struct.ptable* %31, %struct.ptable** %4, align 8
  br label %183

32:                                               ; preds = %22
  %33 = load i64 (i8*, i32*, i32, i32)*, i64 (i8*, i32*, i32, i32)** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 %33(i8* %34, i32* %35, i32 1, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ptable*, %struct.ptable** %5, align 8
  %41 = call i32 @ptable_close(%struct.ptable* %40)
  store %struct.ptable* null, %struct.ptable** %5, align 8
  br label %179

42:                                               ; preds = %32
  %43 = load i32*, i32** %11, align 8
  %44 = bitcast i32* %43 to %struct.disklabel*
  store %struct.disklabel* %44, %struct.disklabel** %8, align 8
  %45 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %46 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32toh(i64 %47)
  %49 = load i32, i32* @DISKMAGIC, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %53 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @le32toh(i64 %54)
  %56 = load i32, i32* @DISKMAGIC, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %179

59:                                               ; preds = %51, %42
  %60 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %61 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @le32toh(i64 %62)
  %64 = load %struct.ptable*, %struct.ptable** %5, align 8
  %65 = getelementptr inbounds %struct.ptable, %struct.ptable* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %179

70:                                               ; preds = %59
  %71 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %72 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16toh(i32 %73)
  %75 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %76 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %78 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 20
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  %82 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %83 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %70
  %87 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %179

88:                                               ; preds = %81
  %89 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %91 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %90, i32 0, i32 4
  %92 = load %struct.partition*, %struct.partition** %91, align 8
  %93 = getelementptr inbounds %struct.partition, %struct.partition* %92, i64 0
  store %struct.partition* %93, %struct.partition** %9, align 8
  %94 = load %struct.partition*, %struct.partition** %9, align 8
  %95 = load i64, i64* @RAW_PART, align 8
  %96 = getelementptr inbounds %struct.partition, %struct.partition* %94, i64 %95
  %97 = getelementptr inbounds %struct.partition, %struct.partition* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le32toh(i64 %98)
  store i32 %99, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %170, %88
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.disklabel*, %struct.disklabel** %8, align 8
  %103 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %175

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @RAW_PART, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %170

112:                                              ; preds = %106
  %113 = load %struct.partition*, %struct.partition** %9, align 8
  %114 = getelementptr inbounds %struct.partition, %struct.partition* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %170

118:                                              ; preds = %112
  %119 = call i8* @malloc(i32 20)
  %120 = bitcast i8* %119 to %struct.pentry*
  store %struct.pentry* %120, %struct.pentry** %10, align 8
  %121 = load %struct.pentry*, %struct.pentry** %10, align 8
  %122 = icmp eq %struct.pentry* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %175

124:                                              ; preds = %118
  %125 = load %struct.partition*, %struct.partition** %9, align 8
  %126 = getelementptr inbounds %struct.partition, %struct.partition* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @le32toh(i64 %127)
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.pentry*, %struct.pentry** %10, align 8
  %132 = getelementptr inbounds %struct.pentry, %struct.pentry* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load %struct.pentry*, %struct.pentry** %10, align 8
  %135 = getelementptr inbounds %struct.pentry, %struct.pentry* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.partition*, %struct.partition** %9, align 8
  %139 = getelementptr inbounds %struct.partition, %struct.partition* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @le32toh(i64 %140)
  %142 = add nsw i32 %137, %141
  %143 = sub nsw i32 %142, 1
  %144 = load %struct.pentry*, %struct.pentry** %10, align 8
  %145 = getelementptr inbounds %struct.pentry, %struct.pentry* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.partition*, %struct.partition** %9, align 8
  %148 = getelementptr inbounds %struct.partition, %struct.partition* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @bsd_parttype(i32 %149)
  %151 = load %struct.pentry*, %struct.pentry** %10, align 8
  %152 = getelementptr inbounds %struct.pentry, %struct.pentry* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.pentry*, %struct.pentry** %10, align 8
  %156 = getelementptr inbounds %struct.pentry, %struct.pentry* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 4
  %158 = load %struct.partition*, %struct.partition** %9, align 8
  %159 = getelementptr inbounds %struct.partition, %struct.partition* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.pentry*, %struct.pentry** %10, align 8
  %162 = getelementptr inbounds %struct.pentry, %struct.pentry* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load %struct.ptable*, %struct.ptable** %5, align 8
  %165 = getelementptr inbounds %struct.ptable, %struct.ptable* %164, i32 0, i32 2
  %166 = load %struct.pentry*, %struct.pentry** %10, align 8
  %167 = load %struct.pentry*, %struct.pentry** %10, align 8
  %168 = call i32 @STAILQ_INSERT_TAIL(i32* %165, %struct.pentry* %166, %struct.pentry* %167)
  %169 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %170

170:                                              ; preds = %124, %117, %111
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = load %struct.partition*, %struct.partition** %9, align 8
  %174 = getelementptr inbounds %struct.partition, %struct.partition* %173, i32 1
  store %struct.partition* %174, %struct.partition** %9, align 8
  br label %100

175:                                              ; preds = %123, %100
  %176 = load i32, i32* @PTABLE_BSD, align 4
  %177 = load %struct.ptable*, %struct.ptable** %5, align 8
  %178 = getelementptr inbounds %struct.ptable, %struct.ptable* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %175, %86, %68, %58, %38
  %180 = load i32*, i32** %11, align 8
  %181 = call i32 @free(i32* %180)
  %182 = load %struct.ptable*, %struct.ptable** %5, align 8
  store %struct.ptable* %182, %struct.ptable** %4, align 8
  br label %183

183:                                              ; preds = %179, %30, %19
  %184 = load %struct.ptable*, %struct.ptable** %4, align 8
  ret %struct.ptable* %184
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ptable_close(%struct.ptable*) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bsd_parttype(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pentry*, %struct.pentry*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
