; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_phrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_phrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdstate = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@tAGO = common dso_local global i64 0, align 8
@tUNUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdstate*)* @phrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phrase(%struct.gdstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdstate*, align 8
  store %struct.gdstate* %0, %struct.gdstate** %3, align 8
  %4 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %5 = call i64 @timephrase(%struct.gdstate* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %222

8:                                                ; preds = %1
  %9 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %10 = call i64 @zonephrase(%struct.gdstate* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %222

13:                                               ; preds = %8
  %14 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %15 = call i64 @datephrase(%struct.gdstate* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %222

18:                                               ; preds = %13
  %19 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %20 = call i64 @dayphrase(%struct.gdstate* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %222

23:                                               ; preds = %18
  %24 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %25 = call i64 @relunitphrase(%struct.gdstate* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %29 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @tAGO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %38 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %42 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 4
  %43 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %44 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 0, %45
  %47 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %48 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %50 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %49, i32 0, i32 5
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 1
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %50, align 8
  br label %53

53:                                               ; preds = %36, %27
  store i32 1, i32* %2, align 4
  br label %222

54:                                               ; preds = %23
  %55 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %56 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @tUNUMBER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %221

63:                                               ; preds = %54
  %64 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %65 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %70 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %68
  %74 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %75 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %73
  %79 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %80 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %84 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %90 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %92 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %91, i32 0, i32 5
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 1
  store %struct.TYPE_2__* %94, %struct.TYPE_2__** %92, align 8
  store i32 1, i32* %2, align 4
  br label %222

95:                                               ; preds = %73, %68, %63
  %96 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %97 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %96, i32 0, i32 5
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 10000
  br i1 %102, label %103, label %148

103:                                              ; preds = %95
  %104 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %105 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %109 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %113 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %117 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %116, i32 0, i32 5
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = srem i32 %121, 100
  %123 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %124 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %126 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %125, i32 0, i32 5
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %130, 100
  %132 = srem i32 %131, 100
  %133 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %134 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %136 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %135, i32 0, i32 5
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 10000
  %142 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %143 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %145 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %144, i32 0, i32 5
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 1
  store %struct.TYPE_2__* %147, %struct.TYPE_2__** %145, align 8
  store i32 1, i32* %2, align 4
  br label %222

148:                                              ; preds = %95
  %149 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %150 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %149, i32 0, i32 5
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %154, 24
  br i1 %155, label %156, label %177

156:                                              ; preds = %148
  %157 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %158 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %162 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %161, i32 0, i32 5
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %168 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %170 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %169, i32 0, i32 4
  store i32 0, i32* %170, align 8
  %171 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %172 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %171, i32 0, i32 6
  store i64 0, i64* %172, align 8
  %173 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %174 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %173, i32 0, i32 5
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 1
  store %struct.TYPE_2__* %176, %struct.TYPE_2__** %174, align 8
  store i32 1, i32* %2, align 4
  br label %222

177:                                              ; preds = %148
  %178 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %179 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %178, i32 0, i32 5
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sdiv i32 %183, 100
  %185 = icmp slt i32 %184, 24
  br i1 %185, label %186, label %220

186:                                              ; preds = %177
  %187 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %188 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %187, i32 0, i32 5
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = srem i32 %192, 100
  %194 = icmp slt i32 %193, 60
  br i1 %194, label %195, label %220

195:                                              ; preds = %186
  %196 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %197 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %196, i32 0, i32 5
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = sdiv i32 %201, 100
  %203 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %204 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %206 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %205, i32 0, i32 5
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = srem i32 %210, 100
  %212 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %213 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %215 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %214, i32 0, i32 6
  store i64 0, i64* %215, align 8
  %216 = load %struct.gdstate*, %struct.gdstate** %3, align 8
  %217 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %216, i32 0, i32 5
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 1
  store %struct.TYPE_2__* %219, %struct.TYPE_2__** %217, align 8
  store i32 1, i32* %2, align 4
  br label %222

220:                                              ; preds = %186, %177
  br label %221

221:                                              ; preds = %220, %54
  store i32 0, i32* %2, align 4
  br label %222

222:                                              ; preds = %221, %195, %156, %103, %78, %53, %22, %17, %12, %7
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i64 @timephrase(%struct.gdstate*) #1

declare dso_local i64 @zonephrase(%struct.gdstate*) #1

declare dso_local i64 @datephrase(%struct.gdstate*) #1

declare dso_local i64 @dayphrase(%struct.gdstate*) #1

declare dso_local i64 @relunitphrase(%struct.gdstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
