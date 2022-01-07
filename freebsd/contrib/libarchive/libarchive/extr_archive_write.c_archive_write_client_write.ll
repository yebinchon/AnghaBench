; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_client_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_client_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64, i64 }
%struct.archive_write = type { i64 (i32*, i32, i8*, i64)*, i32, i32 }
%struct.archive_none = type { i64, i64, i8*, i8* }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"write overrun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8*, i64)* @archive_write_client_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_client_write(%struct.archive_write_filter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.archive_write*, align 8
  %9 = alloca %struct.archive_none*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %17 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.archive_write*
  store %struct.archive_write* %19, %struct.archive_write** %8, align 8
  %20 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %21 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.archive_none*
  store %struct.archive_none* %23, %struct.archive_none** %9, align 8
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %27 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i64, i64* %11, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %36 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %35, i32 0, i32 0
  %37 = load i64 (i32*, i32, i8*, i64)*, i64 (i32*, i32, i8*, i64)** %36, align 8
  %38 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %39 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %38, i32 0, i32 2
  %40 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 %37(i32* %39, i32 %42, i8* %43, i64 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %49, i32* %4, align 4
  br label %215

50:                                               ; preds = %34
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %10, align 8
  br label %31

57:                                               ; preds = %31
  %58 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %215

59:                                               ; preds = %3
  %60 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %61 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %64 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %161

67:                                               ; preds = %59
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %70 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %75 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  br label %79

77:                                               ; preds = %67
  %78 = load i64, i64* %11, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i64 [ %76, %73 ], [ %78, %77 ]
  store i64 %80, i64* %12, align 8
  %81 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %82 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @memcpy(i8* %83, i8* %84, i64 %85)
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %89 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %87
  store i8* %91, i8** %89, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %94 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %10, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub nsw i64 %101, %100
  store i64 %102, i64* %11, align 8
  %103 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %104 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %160

107:                                              ; preds = %79
  %108 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %109 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %14, align 8
  %111 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %112 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %15, align 8
  br label %114

114:                                              ; preds = %142, %107
  %115 = load i64, i64* %15, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %114
  %118 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %119 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %118, i32 0, i32 0
  %120 = load i64 (i32*, i32, i8*, i64)*, i64 (i32*, i32, i8*, i64)** %119, align 8
  %121 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %122 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %121, i32 0, i32 2
  %123 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %124 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i64 %120(i32* %122, i32 %125, i8* %126, i64 %127)
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp sle i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  %132 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %132, i32* %4, align 4
  br label %215

133:                                              ; preds = %117
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %139 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %138, i32 0, i32 2
  %140 = call i32 @archive_set_error(i32* %139, i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %141 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %141, i32* %4, align 4
  br label %215

142:                                              ; preds = %133
  %143 = load i64, i64* %13, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %14, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %15, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %15, align 8
  br label %114

149:                                              ; preds = %114
  %150 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %151 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %154 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %156 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %159 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %149, %79
  br label %161

161:                                              ; preds = %160, %59
  br label %162

162:                                              ; preds = %186, %161
  %163 = load i64, i64* %11, align 8
  %164 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %165 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp uge i64 %163, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %162
  %169 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %170 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %169, i32 0, i32 0
  %171 = load i64 (i32*, i32, i8*, i64)*, i64 (i32*, i32, i8*, i64)** %170, align 8
  %172 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %173 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %172, i32 0, i32 2
  %174 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %175 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %179 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i64 %171(i32* %173, i32 %176, i8* %177, i64 %180)
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %13, align 8
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %168
  %185 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %185, i32* %4, align 4
  br label %215

186:                                              ; preds = %168
  %187 = load i64, i64* %13, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 %187
  store i8* %189, i8** %10, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %11, align 8
  %192 = sub nsw i64 %191, %190
  store i64 %192, i64* %11, align 8
  br label %162

193:                                              ; preds = %162
  %194 = load i64, i64* %11, align 8
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %193
  %197 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %198 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = load i64, i64* %11, align 8
  %202 = call i32 @memcpy(i8* %199, i8* %200, i64 %201)
  %203 = load i64, i64* %11, align 8
  %204 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %205 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 %203
  store i8* %207, i8** %205, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load %struct.archive_none*, %struct.archive_none** %9, align 8
  %210 = getelementptr inbounds %struct.archive_none, %struct.archive_none* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %211, %208
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %196, %193
  %214 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %213, %184, %137, %131, %57, %48
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
