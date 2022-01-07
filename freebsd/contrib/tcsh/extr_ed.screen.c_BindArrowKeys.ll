; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_BindArrowKeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_BindArrowKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@GotTermCaps = common dso_local global i32 0, align 4
@VImode = common dso_local global i64 0, align 8
@CcAltMap = common dso_local global i64* null, align 8
@CcKeyMap = common dso_local global i64* null, align 8
@CcViCmdMap = common dso_local global i64* null, align 8
@CcEmacsMap = common dso_local global i64* null, align 8
@A_K_NKEYS = common dso_local global i32 0, align 4
@tstr = common dso_local global %struct.TYPE_8__* null, align 8
@arrow = common dso_local global %struct.TYPE_9__* null, align 8
@XK_NOD = common dso_local global i64 0, align 8
@F_XKEY = common dso_local global i64 0, align 8
@F_UNASSIGNED = common dso_local global i64 0, align 8
@XK_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BindArrowKeys() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = load i32, i32* @GotTermCaps, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %168

10:                                               ; preds = %0
  %11 = load i64, i64* @VImode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i64*, i64** @CcAltMap, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load i64*, i64** @CcKeyMap, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64* [ %14, %13 ], [ %16, %15 ]
  store i64* %18, i64** %1, align 8
  %19 = load i64, i64* @VImode, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64*, i64** @CcViCmdMap, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load i64*, i64** @CcEmacsMap, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64* [ %22, %21 ], [ %24, %23 ]
  store i64* %26, i64** %2, align 8
  %27 = call i32 (...) @DefaultArrowKeys()
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %165, %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @A_K_NKEYS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %168

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tstr, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %164

45:                                               ; preds = %32
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %164

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @str2short(i8* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @Strlen(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XK_NOD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i64*, i64** %1, align 8
  %71 = call i32 @ClearXkey(i64* %70, %struct.TYPE_7__* %6)
  br label %163

72:                                               ; preds = %50
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %72
  %79 = load i64*, i64** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %1, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %78
  %91 = load i64*, i64** %1, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @F_XKEY, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %90, %78
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @AddXkey(%struct.TYPE_7__* %6, %struct.TYPE_10__* %103, i64 %109)
  %111 = load i64, i64* @F_XKEY, align 8
  %112 = load i64*, i64** %1, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %111, i64* %115, align 8
  br label %162

116:                                              ; preds = %90, %72
  %117 = load i64*, i64** %1, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @F_UNASSIGNED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %161

124:                                              ; preds = %116
  %125 = load i64*, i64** %1, align 8
  %126 = call i32 @ClearXkey(i64* %125, %struct.TYPE_7__* %6)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @XK_CMD, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %124
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %1, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  store i64 %142, i64* %146, align 8
  br label %160

147:                                              ; preds = %124
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @arrow, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @AddXkey(%struct.TYPE_7__* %6, %struct.TYPE_10__* %152, i64 %158)
  br label %160

160:                                              ; preds = %147, %135
  br label %161

161:                                              ; preds = %160, %116
  br label %162

162:                                              ; preds = %161, %98
  br label %163

163:                                              ; preds = %162, %69
  br label %164

164:                                              ; preds = %163, %45, %32
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %3, align 4
  br label %28

168:                                              ; preds = %9, %28
  ret void
}

declare dso_local i32 @DefaultArrowKeys(...) #1

declare dso_local i32 @str2short(i8*) #1

declare dso_local i32 @Strlen(i32) #1

declare dso_local i32 @ClearXkey(i64*, %struct.TYPE_7__*) #1

declare dso_local i32 @AddXkey(%struct.TYPE_7__*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
