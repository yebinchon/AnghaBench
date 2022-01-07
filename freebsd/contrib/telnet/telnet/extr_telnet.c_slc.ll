; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spc = type { i8, i8, i8* }

@SLC_FUNC = common dso_local global i64 0, align 8
@NSLC = common dso_local global i32 0, align 4
@SLC_FLAGS = common dso_local global i64 0, align 8
@SLC_LEVELBITS = common dso_local global i8 0, align 1
@SLC_NOSUPPORT = common dso_local global i8 0, align 1
@spc_data = common dso_local global %struct.spc* null, align 8
@SLC_ACK = common dso_local global i8 0, align 1
@SLC_VALUE = common dso_local global i64 0, align 8
@SLC_DEFAULT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @slc_start_reply()
  br label %9

9:                                                ; preds = %201, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 3
  br i1 %11, label %12, label %206

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* @SLC_FUNC, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %201

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NSLC, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* @SLC_FLAGS, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @SLC_LEVELBITS, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = load i8, i8* @SLC_NOSUPPORT, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = load i8, i8* @SLC_NOSUPPORT, align 1
  %40 = call i32 @slc_add_reply(i32 %38, i8 zeroext %39, i8* null)
  br label %41

41:                                               ; preds = %37, %25
  br label %201

42:                                               ; preds = %21
  %43 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.spc, %struct.spc* %43, i64 %45
  store %struct.spc* %46, %struct.spc** %5, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* @SLC_FLAGS, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @SLC_LEVELBITS, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @SLC_ACK, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = and i32 %51, %56
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = load i64, i64* @SLC_VALUE, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load %struct.spc*, %struct.spc** %5, align 8
  %64 = getelementptr inbounds %struct.spc, %struct.spc* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i8
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %42
  %70 = load i32, i32* %7, align 4
  %71 = load i8, i8* @SLC_LEVELBITS, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = load %struct.spc*, %struct.spc** %5, align 8
  %75 = getelementptr inbounds %struct.spc, %struct.spc* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 8
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @SLC_LEVELBITS, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp eq i32 %73, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %201

83:                                               ; preds = %69, %42
  %84 = load i32, i32* %7, align 4
  %85 = load i8, i8* @SLC_DEFAULT, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @SLC_ACK, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load i8, i8* @SLC_ACK, align 1
  %93 = zext i8 %92 to i32
  %94 = xor i32 %93, -1
  %95 = load i8*, i8** %3, align 8
  %96 = load i64, i64* @SLC_FLAGS, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, %94
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  br label %102

102:                                              ; preds = %91, %83
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.spc*, %struct.spc** %5, align 8
  %105 = getelementptr inbounds %struct.spc, %struct.spc* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 8
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @SLC_LEVELBITS, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = load i8, i8* @SLC_ACK, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = icmp eq i32 %103, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %102
  %116 = load i8*, i8** %3, align 8
  %117 = load i64, i64* @SLC_VALUE, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.spc*, %struct.spc** %5, align 8
  %123 = getelementptr inbounds %struct.spc, %struct.spc* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %3, align 8
  %125 = load i64, i64* @SLC_FLAGS, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load %struct.spc*, %struct.spc** %5, align 8
  %129 = getelementptr inbounds %struct.spc, %struct.spc* %128, i32 0, i32 0
  store i8 %127, i8* %129, align 8
  br label %201

130:                                              ; preds = %102
  %131 = load i8, i8* @SLC_ACK, align 1
  %132 = zext i8 %131 to i32
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.spc*, %struct.spc** %5, align 8
  %138 = getelementptr inbounds %struct.spc, %struct.spc* %137, i32 0, i32 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* @SLC_LEVELBITS, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %140, %142
  %144 = icmp sle i32 %136, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %130
  %146 = load i8*, i8** %3, align 8
  %147 = load i64, i64* @SLC_FLAGS, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @SLC_ACK, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %150, %152
  %154 = trunc i32 %153 to i8
  %155 = load %struct.spc*, %struct.spc** %5, align 8
  %156 = getelementptr inbounds %struct.spc, %struct.spc* %155, i32 0, i32 0
  store i8 %154, i8* %156, align 8
  %157 = load i8*, i8** %3, align 8
  %158 = load i64, i64* @SLC_VALUE, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.spc*, %struct.spc** %5, align 8
  %164 = getelementptr inbounds %struct.spc, %struct.spc* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %145, %130
  %166 = load i32, i32* %7, align 4
  %167 = load i8, i8* @SLC_DEFAULT, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %192

170:                                              ; preds = %165
  %171 = load %struct.spc*, %struct.spc** %5, align 8
  %172 = getelementptr inbounds %struct.spc, %struct.spc* %171, i32 0, i32 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @SLC_LEVELBITS, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %174, %176
  %178 = load i8, i8* @SLC_DEFAULT, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp ne i32 %177, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %170
  %182 = load %struct.spc*, %struct.spc** %5, align 8
  %183 = getelementptr inbounds %struct.spc, %struct.spc* %182, i32 0, i32 1
  %184 = load i8, i8* %183, align 1
  %185 = load %struct.spc*, %struct.spc** %5, align 8
  %186 = getelementptr inbounds %struct.spc, %struct.spc* %185, i32 0, i32 0
  store i8 %184, i8* %186, align 8
  br label %191

187:                                              ; preds = %170
  %188 = load i8, i8* @SLC_NOSUPPORT, align 1
  %189 = load %struct.spc*, %struct.spc** %5, align 8
  %190 = getelementptr inbounds %struct.spc, %struct.spc* %189, i32 0, i32 0
  store i8 %188, i8* %190, align 8
  br label %191

191:                                              ; preds = %187, %181
  br label %192

192:                                              ; preds = %191, %165
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.spc*, %struct.spc** %5, align 8
  %195 = getelementptr inbounds %struct.spc, %struct.spc* %194, i32 0, i32 0
  %196 = load i8, i8* %195, align 8
  %197 = load %struct.spc*, %struct.spc** %5, align 8
  %198 = getelementptr inbounds %struct.spc, %struct.spc* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @slc_add_reply(i32 %193, i8 zeroext %196, i8* %199)
  br label %201

201:                                              ; preds = %192, %115, %82, %41, %20
  %202 = load i32, i32* %4, align 4
  %203 = sub nsw i32 %202, 3
  store i32 %203, i32* %4, align 4
  %204 = load i8*, i8** %3, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 3
  store i8* %205, i8** %3, align 8
  br label %9

206:                                              ; preds = %9
  %207 = call i32 (...) @slc_end_reply()
  %208 = call i64 (...) @slc_update()
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 @setconnmode(i32 1)
  br label %212

212:                                              ; preds = %210, %206
  ret void
}

declare dso_local i32 @slc_start_reply(...) #1

declare dso_local i32 @slc_add_reply(i32, i8 zeroext, i8*) #1

declare dso_local i32 @slc_end_reply(...) #1

declare dso_local i64 @slc_update(...) #1

declare dso_local i32 @setconnmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
