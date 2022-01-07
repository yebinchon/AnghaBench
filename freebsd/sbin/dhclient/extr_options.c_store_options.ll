; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_store_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_store_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.tree_cache = type { i32, i64 }

@dhcp_options = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_options(i8* %0, i32 %1, %struct.tree_cache** %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tree_cache**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.tree_cache** %2, %struct.tree_cache*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 1024)
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %220, %8
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %223

32:                                               ; preds = %28
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %22, align 4
  %39 = load %struct.tree_cache**, %struct.tree_cache*** %11, align 8
  %40 = load i32, i32* %22, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %39, i64 %41
  %43 = load %struct.tree_cache*, %struct.tree_cache** %42, align 8
  %44 = icmp ne %struct.tree_cache* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %220

46:                                               ; preds = %32
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %220

53:                                               ; preds = %46
  %54 = load i32, i32* %22, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %55
  store i32 1, i32* %56, align 4
  %57 = load %struct.tree_cache**, %struct.tree_cache*** %11, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %57, i64 %59
  %61 = load %struct.tree_cache*, %struct.tree_cache** %60, align 8
  %62 = getelementptr inbounds %struct.tree_cache, %struct.tree_cache* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %53
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dhcp_options, align 8
  %68 = load i32, i32* %22, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 116
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %24, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %24, align 4
  store i32 1, i32* %21, align 4
  br label %81

80:                                               ; preds = %66, %53
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %80, %77
  store i32 0, i32* %20, align 4
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %23, align 4
  br label %83

83:                                               ; preds = %205, %81
  %84 = load i32, i32* %24, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %219

86:                                               ; preds = %83
  %87 = load i32, i32* %24, align 4
  %88 = icmp sgt i32 %87, 255
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %24, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ 255, %89 ], [ %91, %90 ]
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %25, align 1
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load i32, i32* %17, align 4
  %100 = load i8, i8* %25, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = load i32, i32* %14, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %106, %107
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %25, align 1
  br label %127

110:                                              ; preds = %98, %92
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = load i8, i8* %25, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %115, %117
  %119 = load i32, i32* %15, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  %124 = sub nsw i32 %122, %123
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %25, align 1
  br label %126

126:                                              ; preds = %121, %114, %110
  br label %127

127:                                              ; preds = %126, %105
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 2
  %130 = load i8, i8* %25, align 1
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %129, %131
  %133 = load i32, i32* %10, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %23, align 4
  store i32 %136, i32* %17, align 4
  br label %219

137:                                              ; preds = %127
  %138 = load i32, i32* %22, align 4
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 %139, i8* %143, align 1
  %144 = load i8, i8* %25, align 1
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 %144, i8* %149, align 1
  %150 = load i32, i32* %21, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %187

152:                                              ; preds = %137
  %153 = load i8, i8* %25, align 1
  %154 = zext i8 %153 to i32
  %155 = load i32, i32* %24, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %187

157:                                              ; preds = %152
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = load %struct.tree_cache**, %struct.tree_cache*** %11, align 8
  %164 = load i32, i32* %22, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %163, i64 %165
  %167 = load %struct.tree_cache*, %struct.tree_cache** %166, align 8
  %168 = getelementptr inbounds %struct.tree_cache, %struct.tree_cache* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %20, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  %173 = load i8, i8* %25, align 1
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %174, 1
  %176 = trunc i32 %175 to i8
  %177 = call i32 @memcpy(i8* %162, i64 %172, i8 zeroext %176)
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 2
  %181 = load i8, i8* %25, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %180, %182
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %178, i64 %185
  store i8 0, i8* %186, align 1
  br label %205

187:                                              ; preds = %152, %137
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  %193 = load %struct.tree_cache**, %struct.tree_cache*** %11, align 8
  %194 = load i32, i32* %22, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.tree_cache*, %struct.tree_cache** %193, i64 %195
  %197 = load %struct.tree_cache*, %struct.tree_cache** %196, align 8
  %198 = getelementptr inbounds %struct.tree_cache, %struct.tree_cache* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %199, %201
  %203 = load i8, i8* %25, align 1
  %204 = call i32 @memcpy(i8* %192, i64 %202, i8 zeroext %203)
  br label %205

205:                                              ; preds = %187, %157
  %206 = load i8, i8* %25, align 1
  %207 = zext i8 %206 to i32
  %208 = load i32, i32* %24, align 4
  %209 = sub nsw i32 %208, %207
  store i32 %209, i32* %24, align 4
  %210 = load i8, i8* %25, align 1
  %211 = zext i8 %210 to i32
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %20, align 4
  %214 = load i8, i8* %25, align 1
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 2, %215
  %217 = load i32, i32* %17, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %17, align 4
  br label %83

219:                                              ; preds = %135, %83
  br label %220

220:                                              ; preds = %219, %52, %45
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %19, align 4
  br label %28

223:                                              ; preds = %28
  %224 = load i32, i32* %17, align 4
  ret i32 %224
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
