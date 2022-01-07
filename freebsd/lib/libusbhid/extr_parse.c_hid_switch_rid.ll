; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_parse.c_hid_switch_rid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusbhid/extr_parse.c_hid_switch_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64* }
%struct.hid_item = type { i64 }

@MAXID = common dso_local global i64 0, align 8
@ITEMTYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_data*, %struct.hid_item*, i64)* @hid_switch_rid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_switch_rid(%struct.hid_data* %0, %struct.hid_item* %1, i64 %2) #0 {
  %4 = alloca %struct.hid_data*, align 8
  %5 = alloca %struct.hid_item*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hid_data* %0, %struct.hid_data** %4, align 8
  store %struct.hid_item* %1, %struct.hid_item** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %10 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %181

15:                                               ; preds = %3
  %16 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %17 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %54

21:                                               ; preds = %15
  store i64 1, i64* %7, align 8
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MAXID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %28 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %35 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %53

39:                                               ; preds = %26
  %40 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %41 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %22

53:                                               ; preds = %48, %38, %22
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @MAXID, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %60 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %63 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %61, i64* %67, align 8
  store i64 0, i64* %8, align 8
  br label %68

68:                                               ; preds = %88, %58
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ITEMTYPES, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %74 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %80 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %78, i64* %87, align 8
  br label %88

88:                                               ; preds = %72
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %68

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %95 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i64 0, i64* %7, align 8
  br label %130

99:                                               ; preds = %92
  store i64 1, i64* %7, align 8
  br label %100

100:                                              ; preds = %126, %99
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @MAXID, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %106 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %129

115:                                              ; preds = %104
  %116 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %117 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %129

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %7, align 8
  br label %100

129:                                              ; preds = %124, %114, %100
  br label %130

130:                                              ; preds = %129, %98
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @MAXID, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %130
  %135 = load i64, i64* %6, align 8
  %136 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %137 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i64 %135, i64* %141, align 8
  store i64 0, i64* %8, align 8
  br label %142

142:                                              ; preds = %162, %134
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @ITEMTYPES, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %142
  %147 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %148 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %158 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %156, i64* %161, align 8
  br label %162

162:                                              ; preds = %146
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %8, align 8
  br label %142

165:                                              ; preds = %142
  br label %181

166:                                              ; preds = %130
  store i64 0, i64* %8, align 8
  br label %167

167:                                              ; preds = %177, %166
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @ITEMTYPES, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %173 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %171
  %178 = load i64, i64* %8, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %8, align 8
  br label %167

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %14, %180, %165
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
