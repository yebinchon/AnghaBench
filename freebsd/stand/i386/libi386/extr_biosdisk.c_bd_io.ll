; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32 }

@BD_RD = common dso_local global i32 0, align 4
@BD_MODEEDD = common dso_local global i32 0, align 4
@BD_NO_MEDIA = common dso_local global i32 0, align 4
@BD_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s%d: Write %d sector(s) from %p (0x%x) to %lld: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s%d: Read %d sector(s) from %lld to %p (0x%x): 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk_devdesc*, %struct.TYPE_10__*, i32, i32, i32, i32)* @bd_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_io(%struct.disk_devdesc* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.disk_devdesc*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %149

19:                                               ; preds = %6
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @BD_RD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp sge i64 %25, 4294967296
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = call i32 @bd_io_workaround(%struct.TYPE_10__* %28)
  br label %30

30:                                               ; preds = %27, %23, %19
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %93, %30
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BD_MODEEDD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @bd_edd_io(%struct.TYPE_10__* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  br label %55

48:                                               ; preds = %34
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @bd_chs_io(%struct.TYPE_10__* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BD_NO_MEDIA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* @BD_NO_MEDIA, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %58
  br label %96

73:                                               ; preds = %55
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bd_reset_disk(i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 49
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %92

86:                                               ; preds = %83, %80, %73
  %87 = load i32, i32* @BD_NO_MEDIA, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %96

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %31

96:                                               ; preds = %86, %72, %31
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %147

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BD_NO_MEDIA, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %99
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @BD_WR, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %112 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %118 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @VTOP(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %116, i32 %120, i32 %121, i32 %122, i32 %124, i32 %125, i32 %126)
  br label %146

128:                                              ; preds = %106
  %129 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %130 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.disk_devdesc*, %struct.disk_devdesc** %8, align 8
  %136 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @VTOP(i32 %142)
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %134, i32 %138, i32 %139, i32 %140, i32 %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %128, %110
  br label %147

147:                                              ; preds = %146, %99, %96
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %147, %18
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @bd_io_workaround(%struct.TYPE_10__*) #1

declare dso_local i32 @bd_edd_io(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @bd_chs_io(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @bd_reset_disk(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VTOP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
