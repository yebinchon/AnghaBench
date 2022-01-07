; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_state_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }

@BIT_RD = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_state_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mesh_state*, align 8
  %7 = alloca %struct.mesh_state*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mesh_state*
  store %struct.mesh_state* %10, %struct.mesh_state** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mesh_state*
  store %struct.mesh_state* %12, %struct.mesh_state** %7, align 8
  %13 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %14 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %17 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %172

21:                                               ; preds = %2
  %22 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %23 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %26 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %172

30:                                               ; preds = %21
  %31 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %32 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %38 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %172

43:                                               ; preds = %36, %30
  %44 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %45 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %51 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %172

56:                                               ; preds = %49, %43
  %57 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %58 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %64 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %172

69:                                               ; preds = %62, %56
  %70 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %71 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %77 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %172

82:                                               ; preds = %75, %69
  %83 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %84 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BIT_RD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %92 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BIT_RD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  store i32 -1, i32* %3, align 4
  br label %172

99:                                               ; preds = %90, %82
  %100 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %101 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @BIT_RD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %99
  %108 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %109 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BIT_RD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %172

116:                                              ; preds = %107, %99
  %117 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %118 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BIT_CD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %126 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BIT_CD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %172

133:                                              ; preds = %124, %116
  %134 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %135 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BIT_CD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %133
  %142 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %143 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BIT_CD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %172

150:                                              ; preds = %141, %133
  %151 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %152 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %155 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = call i32 @query_info_compare(i32* %153, i32* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %3, align 4
  br label %172

162:                                              ; preds = %150
  %163 = load %struct.mesh_state*, %struct.mesh_state** %6, align 8
  %164 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mesh_state*, %struct.mesh_state** %7, align 8
  %168 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @client_info_compare(i32 %166, i32 %170)
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %162, %160, %149, %132, %115, %98, %81, %68, %55, %42, %29, %20
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @query_info_compare(i32*, i32*) #1

declare dso_local i32 @client_info_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
