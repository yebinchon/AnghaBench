; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_commit_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_commit_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, %struct.evbuffer_chain**, %struct.evbuffer_chain*, i64 }
%struct.evbuffer_chain = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_iovec = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_commit_space(%struct.evbuffer* %0, %struct.evbuffer_iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer_chain*, align 8
  %8 = alloca %struct.evbuffer_chain**, align 8
  %9 = alloca %struct.evbuffer_chain**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_iovec* %1, %struct.evbuffer_iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %14 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %13)
  %15 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %191

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %191

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %75

27:                                               ; preds = %24
  %28 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %29 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %28, i32 0, i32 3
  %30 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %29, align 8
  %31 = icmp ne %struct.evbuffer_chain* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %27
  %33 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %34 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %33, i64 0
  %35 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %38 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %37, i32 0, i32 3
  %39 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %38, align 8
  %40 = call i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain* %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = icmp eq i8* %36, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %32
  %44 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %45 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %44, i64 0
  %46 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %49 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %48, i32 0, i32 3
  %50 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %49, align 8
  %51 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %50)
  %52 = icmp ugt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %191

54:                                               ; preds = %43
  %55 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %56 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %55, i64 0
  %57 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %60 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %59, i32 0, i32 3
  %61 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %60, align 8
  %62 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %58
  store i64 %64, i64* %62, align 8
  %65 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %66 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %65, i64 0
  %67 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %73 = call i32 @advance_last_with_data(%struct.evbuffer* %72)
  br label %74

74:                                               ; preds = %71, %54
  br label %178

75:                                               ; preds = %32, %27, %24
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %78 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %77, i32 0, i32 2
  %79 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %78, align 8
  store %struct.evbuffer_chain** %79, %struct.evbuffer_chain*** %8, align 8
  %80 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %8, align 8
  %81 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %80, align 8
  %82 = icmp ne %struct.evbuffer_chain* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %191

84:                                               ; preds = %76
  %85 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %8, align 8
  %86 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %85, align 8
  %87 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %8, align 8
  %91 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %90, align 8
  %92 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %91, i32 0, i32 1
  store %struct.evbuffer_chain** %92, %struct.evbuffer_chain*** %8, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %8, align 8
  %95 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %94, align 8
  store %struct.evbuffer_chain* %95, %struct.evbuffer_chain** %7, align 8
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %130, %93
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %102 = icmp ne %struct.evbuffer_chain* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %191

104:                                              ; preds = %100
  %105 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %105, i64 %107
  %109 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %112 = call i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain* %111)
  %113 = inttoptr i64 %112 to i8*
  %114 = icmp ne i8* %110, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %104
  %116 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %116, i64 %118
  %120 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %123 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %122)
  %124 = icmp ugt i64 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115, %104
  br label %191

126:                                              ; preds = %115
  %127 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %128 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %127, i32 0, i32 1
  %129 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %128, align 8
  store %struct.evbuffer_chain* %129, %struct.evbuffer_chain** %7, align 8
  br label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %96

133:                                              ; preds = %96
  %134 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %8, align 8
  store %struct.evbuffer_chain** %134, %struct.evbuffer_chain*** %9, align 8
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %174, %133
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %177

139:                                              ; preds = %135
  %140 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %140, i64 %142
  %144 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %147 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %146, align 8
  %148 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, %145
  store i64 %150, i64* %148, align 8
  %151 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %151, i64 %153
  %155 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %11, align 8
  %159 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %5, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %159, i64 %161
  %163 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %139
  %167 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %168 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %169 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %168, i32 0, i32 2
  store %struct.evbuffer_chain** %167, %struct.evbuffer_chain*** %169, align 8
  br label %170

170:                                              ; preds = %166, %139
  %171 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %172 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %171, align 8
  %173 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %172, i32 0, i32 1
  store %struct.evbuffer_chain** %173, %struct.evbuffer_chain*** %9, align 8
  br label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %135

177:                                              ; preds = %135
  br label %178

178:                                              ; preds = %177, %74
  %179 = load i64, i64* %11, align 8
  %180 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %181 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %186 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, %184
  store i64 %188, i64* %186, align 8
  store i32 0, i32* %10, align 4
  %189 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %190 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %189)
  br label %191

191:                                              ; preds = %178, %125, %103, %83, %53, %23, %19
  %192 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %193 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %192)
  %194 = load i32, i32* %10, align 4
  ret i32 %194
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain*) #1

declare dso_local i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain*) #1

declare dso_local i32 @advance_last_with_data(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
