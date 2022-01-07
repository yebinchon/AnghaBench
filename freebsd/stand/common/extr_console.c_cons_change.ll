; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_cons_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_cons_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 (i32)* }

@consoles = common dso_local global %struct.TYPE_2__** null, align 8
@C_ACTIVEIN = common dso_local global i32 0, align 4
@C_ACTIVEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@C_PRESENTIN = common dso_local global i32 0, align 4
@C_PRESENTOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"console %s failed to initialize\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cons_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cons_change(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load i32, i32* @C_ACTIVEIN, align 4
  %18 = load i32, i32* @C_ACTIVEOUT, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %20
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %8, align 8
  store i8* %34, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %101, %85, %44, %32
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %102

38:                                               ; preds = %35
  %39 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %35

45:                                               ; preds = %38
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @cons_find(i8* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %101

50:                                               ; preds = %45
  %51 = load i32, i32* @C_ACTIVEIN, align 4
  %52 = load i32, i32* @C_ACTIVEOUT, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %53
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = call i32 %68(i32 0)
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @C_PRESENTIN, align 4
  %78 = load i32, i32* @C_PRESENTOUT, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = load i32, i32* @C_PRESENTIN, align 4
  %82 = load i32, i32* @C_PRESENTOUT, align 4
  %83 = or i32 %81, %82
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %50
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %35

88:                                               ; preds = %50
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %91, %88
  br label %101

101:                                              ; preds = %100, %45
  br label %35

102:                                              ; preds = %35
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %163

107:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %154, %107
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = icmp ne %struct.TYPE_2__* %113, null
  br i1 %114, label %115, label %157

115:                                              ; preds = %108
  %116 = load i32, i32* @C_ACTIVEIN, align 4
  %117 = load i32, i32* @C_ACTIVEOUT, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %119, i64 %121
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %118
  store i32 %126, i32* %124, align 8
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32 (i32)*, i32 (i32)** %132, align 8
  %134 = call i32 %133(i32 0)
  %135 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %135, i64 %137
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @C_PRESENTIN, align 4
  %143 = load i32, i32* @C_PRESENTOUT, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = load i32, i32* @C_PRESENTIN, align 4
  %147 = load i32, i32* @C_PRESENTOUT, align 4
  %148 = or i32 %146, %147
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %115
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %115
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %108

157:                                              ; preds = %108
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @CMD_ERROR, align 4
  store i32 %161, i32* %2, align 4
  br label %165

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %102
  %164 = load i32, i32* @CMD_OK, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @cons_find(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
