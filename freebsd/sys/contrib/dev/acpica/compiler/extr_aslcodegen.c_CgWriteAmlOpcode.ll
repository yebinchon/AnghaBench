; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcodegen.c_CgWriteAmlOpcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcodegen.c_CgWriteAmlOpcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%union.anon = type { [2 x i32] }
%union.anon.0 = type { [4 x i32] }

@PARSEOP_DEFAULT_ARG = common dso_local global i64 0, align 8
@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Found a node with an unassigned AML opcode\0A\00", align 1
@ASL_FILE_STDERR = common dso_local global i32 0, align 4
@AML_FIELD_OFFSET_OP = common dso_local global i32 0, align 4
@AML_FIELD_ACCESS_OP = common dso_local global i32 0, align 4
@AML_FIELD_CONNECTION_OP = common dso_local global i32 0, align 4
@OP_AML_PACKAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @CgWriteAmlOpcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CgWriteAmlOpcode(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon.0, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %185

14:                                               ; preds = %1
  %15 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = call i32 @CgWriteAmlComment(%struct.TYPE_9__* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %38 [
    i32 129, label %25
    i32 133, label %29
    i32 135, label %32
    i32 134, label %35
  ]

25:                                               ; preds = %20
  %26 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ASL_FILE_STDERR, align 4
  %28 = call i32 @FlPrintFile(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %185

29:                                               ; preds = %20
  %30 = load i32, i32* @AML_FIELD_OFFSET_OP, align 4
  %31 = bitcast %union.anon* %5 to i32*
  store i32 %30, i32* %31, align 4
  br label %44

32:                                               ; preds = %20
  %33 = load i32, i32* @AML_FIELD_ACCESS_OP, align 4
  %34 = bitcast %union.anon* %5 to i32*
  store i32 %33, i32* %34, align 4
  br label %44

35:                                               ; preds = %20
  %36 = load i32, i32* @AML_FIELD_CONNECTION_OP, align 4
  %37 = bitcast %union.anon* %5 to i32*
  store i32 %36, i32* %37, align 4
  br label %44

38:                                               ; preds = %20
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %union.anon* %5 to i32*
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %35, %32, %29
  %45 = bitcast %union.anon* %5 to i32*
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %54 [
    i32 132, label %47
  ]

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = bitcast %union.anon.0* %6 to i32*
  store i32 %52, i32* %53, align 4
  br label %78

54:                                               ; preds = %44
  %55 = bitcast %union.anon* %5 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 255
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = bitcast %union.anon* %5 to [2 x i32]*
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 1
  %62 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %59, i32* %61, i32 1)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = bitcast %union.anon* %5 to [2 x i32]*
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 0, i64 0
  %67 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %64, i32* %66, i32 1)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %71, %75
  %77 = bitcast %union.anon.0* %6 to i32*
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %63, %47
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @OP_AML_PACKAGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %141

86:                                               ; preds = %78
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = bitcast %union.anon.0* %6 to [4 x i32]*
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %94, i64 0, i64 0
  %96 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %93, i32* %95, i32 1)
  br label %140

97:                                               ; preds = %86
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %97
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = shl i32 %108, 6
  %110 = bitcast %union.anon.0* %6 to [4 x i32]*
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 15
  %114 = or i32 %109, %113
  store i32 %114, i32* %3, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %115, i32* %3, i32 1)
  %117 = bitcast %union.anon.0* %6 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 4
  store i32 %119, i32* %117, align 4
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %135, %103
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = bitcast %union.anon.0* %6 to [4 x i32]*
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %130, i64 0, i64 %132
  %134 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %129, i32* %133, i32 1)
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %120

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %97
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %78
  %142 = bitcast %union.anon* %5 to i32*
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %184 [
    i32 137, label %144
    i32 128, label %151
    i32 136, label %158
    i32 131, label %165
    i32 130, label %172
  ]

144:                                              ; preds = %141
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %145, i32* %149, i32 1)
  br label %185

151:                                              ; preds = %141
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %152, i32* %156, i32 2)
  br label %185

158:                                              ; preds = %141
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %159, i32* %163, i32 4)
  br label %185

165:                                              ; preds = %141
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %166, i32* %170, i32 8)
  br label %185

172:                                              ; preds = %141
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @CgLocalWriteAmlData(%struct.TYPE_9__* %173, i32* %178, i32 %182)
  br label %185

184:                                              ; preds = %141
  br label %185

185:                                              ; preds = %13, %25, %184, %172, %165, %158, %151, %144
  ret void
}

declare dso_local i32 @CgWriteAmlComment(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @FlPrintFile(i32, i8*) #1

declare dso_local i32 @CgLocalWriteAmlData(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
