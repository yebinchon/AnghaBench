; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_tracepoint_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/powerpc/dtrace/extr_fasttrap_isa.c_fasttrap_tracepoint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i8*, i8* }

@FASTTRAP_T_COMMON = common dso_local global i64 0, align 8
@FASTTRAP_T_NOP = common dso_local global i8* null, align 8
@FASTTRAP_T_BC = common dso_local global i64 0, align 8
@FASTTRAP_T_B = common dso_local global i64 0, align 8
@FASTTRAP_T_BCTR = common dso_local global i8* null, align 8
@FASTTRAP_F_RETMAYBE = common dso_local global i32 0, align 4
@FASTTRAP_T_RESTORE = common dso_local global i64 0, align 8
@OP3_RETURN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasttrap_tracepoint_init(i32* %0, %struct.TYPE_3__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @uread(i32* %11, i32* %10, i32 4, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %167

16:                                               ; preds = %4
  %17 = load i64, i64* @FASTTRAP_T_COMMON, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @OP(i32 %23)
  switch i32 %24, label %166 [
    i32 0, label %25
    i32 1, label %25
    i32 2, label %25
    i32 4, label %25
    i32 5, label %25
    i32 6, label %25
    i32 30, label %25
    i32 39, label %25
    i32 58, label %25
    i32 62, label %25
    i32 3, label %25
    i32 31, label %26
    i32 16, label %54
    i32 18, label %91
    i32 19, label %120
    i32 24, label %150
  ]

25:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  store i32 -1, i32* %5, align 4
  br label %167

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @OPX(i32 %27)
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %167

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @OPX(i32 %32)
  %34 = icmp eq i32 %33, 444
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @OP_RS(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @OP_RA(i32 %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @OP_RS(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @OP_RB(i32 %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** @FASTTRAP_T_NOP, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %41, %35, %31
  br label %53

53:                                               ; preds = %52
  br label %166

54:                                               ; preds = %16
  %55 = load i64, i64* @FASTTRAP_T_BC, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 65532
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 32768
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, -65536
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %54
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  br label %82

82:                                               ; preds = %74, %70
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @OP_BO(i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @OP_BI(i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  br label %166

91:                                               ; preds = %16
  %92 = load i64, i64* @FASTTRAP_T_B, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 67108860
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, 33554432
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, -67108864
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %91
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 2
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %111, %107
  br label %166

120:                                              ; preds = %16
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @OPX(i32 %121)
  switch i32 %122, label %149 [
    i32 528, label %123
    i32 16, label %136
  ]

123:                                              ; preds = %120
  %124 = load i8*, i8** @FASTTRAP_T_BCTR, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i8* @OP_BO(i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i8* @OP_BI(i32 %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  br label %149

136:                                              ; preds = %120
  %137 = load i8*, i8** @FASTTRAP_T_BCTR, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i8* @OP_BO(i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i8* @OP_BI(i32 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %120, %136, %123
  br label %166

150:                                              ; preds = %16
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @OP_RS(i32 %151)
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @OP_RA(i32 %153)
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i8*, i8** @FASTTRAP_T_NOP, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %160, %156, %150
  br label %166

166:                                              ; preds = %16, %165, %149, %119, %82, %53
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %30, %25, %15
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i64 @uread(i32*, i32*, i32, i64) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @OPX(i32) #1

declare dso_local i32 @OP_RS(i32) #1

declare dso_local i32 @OP_RA(i32) #1

declare dso_local i32 @OP_RB(i32) #1

declare dso_local i8* @OP_BO(i32) #1

declare dso_local i8* @OP_BI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
