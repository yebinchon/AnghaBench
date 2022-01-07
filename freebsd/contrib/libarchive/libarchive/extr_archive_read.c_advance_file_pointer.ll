; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_advance_file_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_advance_file_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32, i64, i64, i64, i64, i8*, {}*, i64 (%struct.archive_read_filter*, i32**)*, i32, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i32)* @advance_file_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advance_file_pointer(%struct.archive_read_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %238

15:                                               ; preds = %2
  %16 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %17 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %23 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @minimum(i32 %21, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %29 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %34 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %44 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %20, %15
  %53 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %54 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %60 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @minimum(i32 %58, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %66 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %64
  store i8* %68, i8** %66, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %71 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %81 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %57, %52
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %238

94:                                               ; preds = %89
  %95 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %96 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %95, i32 0, i32 6
  %97 = bitcast {}** %96 to i32 (%struct.archive_read_filter*, i32)**
  %98 = load i32 (%struct.archive_read_filter*, i32)*, i32 (%struct.archive_read_filter*, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.archive_read_filter*, i32)* %98, null
  br i1 %99, label %100, label %132

100:                                              ; preds = %94
  %101 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %102 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %101, i32 0, i32 6
  %103 = bitcast {}** %102 to i32 (%struct.archive_read_filter*, i32)**
  %104 = load i32 (%struct.archive_read_filter*, i32)*, i32 (%struct.archive_read_filter*, i32)** %103, align 8
  %105 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 %104(%struct.archive_read_filter* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %112 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %238

114:                                              ; preds = %100
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %118 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %238

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %94
  br label %133

133:                                              ; preds = %222, %180, %132
  %134 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %135 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %134, i32 0, i32 7
  %136 = load i64 (%struct.archive_read_filter*, i32**)*, i64 (%struct.archive_read_filter*, i32**)** %135, align 8
  %137 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %138 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %139 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %138, i32 0, i32 10
  %140 = call i64 %136(%struct.archive_read_filter* %137, i32** %139)
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* %8, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %145 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %144, i32 0, i32 10
  store i32* null, i32** %145, align 8
  %146 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %147 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load i64, i64* %8, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %3, align 4
  br label %238

150:                                              ; preds = %133
  %151 = load i64, i64* %8, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %188

153:                                              ; preds = %150
  %154 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %155 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %154, i32 0, i32 11
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %161 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %160, i32 0, i32 11
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  %167 = icmp ne i32 %159, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %153
  %169 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %170 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %171 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %170, i32 0, i32 11
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i64 @client_switch_proxy(%struct.archive_read_filter* %169, i32 %176)
  %178 = load i64, i64* @ARCHIVE_OK, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %133

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %153
  %183 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %184 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %183, i32 0, i32 10
  store i32* null, i32** %184, align 8
  %185 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %186 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %185, i32 0, i32 8
  store i32 1, i32* %186, align 8
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %3, align 4
  br label %238

188:                                              ; preds = %150
  %189 = load i64, i64* %8, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp sge i64 %189, %191
  br i1 %192, label %193, label %222

193:                                              ; preds = %188
  %194 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %195 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %194, i32 0, i32 10
  %196 = load i32*, i32** %195, align 8
  %197 = bitcast i32* %196 to i8*
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %202 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %201, i32 0, i32 5
  store i8* %200, i8** %202, align 8
  %203 = load i64, i64* %8, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %203, %205
  %207 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %208 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %207, i32 0, i32 4
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %8, align 8
  %210 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %211 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %210, i32 0, i32 9
  store i64 %209, i64* %211, align 8
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %218 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, %216
  store i64 %220, i64* %218, align 8
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* %3, align 4
  br label %238

222:                                              ; preds = %188
  %223 = load i64, i64* %8, align 8
  %224 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %225 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, %223
  store i64 %227, i64* %225, align 8
  %228 = load i64, i64* %8, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %7, align 4
  %233 = load i64, i64* %8, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %5, align 4
  br label %133

238:                                              ; preds = %193, %182, %143, %129, %110, %92, %14
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i64 @minimum(i32, i32) #1

declare dso_local i64 @client_switch_proxy(%struct.archive_read_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
