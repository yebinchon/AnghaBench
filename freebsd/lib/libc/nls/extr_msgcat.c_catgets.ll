; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nls/extr_msgcat.c_catgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nls/extr_msgcat.c_catgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct._nls_cat_hdr = type { i64, i64, i64 }
%struct._nls_msg_hdr = type { i64, i64 }
%struct._nls_set_hdr = type { i64, i64, i64 }

@NLERR = common dso_local global %struct.TYPE_4__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @catgets(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct._nls_cat_hdr*, align 8
  %11 = alloca %struct._nls_msg_hdr*, align 8
  %12 = alloca %struct._nls_set_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NLERR, align 8
  %22 = icmp eq %struct.TYPE_4__* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EBADF, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %5, align 8
  br label %168

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct._nls_cat_hdr*
  store %struct._nls_cat_hdr* %30, %struct._nls_cat_hdr** %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 24
  %36 = bitcast i8* %35 to %struct._nls_set_hdr*
  store %struct._nls_set_hdr* %36, %struct._nls_set_hdr** %12, align 8
  store i32 0, i32* %14, align 4
  %37 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %10, align 8
  %38 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ntohl(i32 %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %163, %26
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %164

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %53, i64 %55
  %57 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ntohl(i32 %59)
  %61 = sub nsw i32 %52, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %153

64:                                               ; preds = %47
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 24
  %70 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %10, align 8
  %71 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ntohl(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %69, i64 %75
  %77 = bitcast i8* %76 to %struct._nls_msg_hdr*
  store %struct._nls_msg_hdr* %77, %struct._nls_msg_hdr** %11, align 8
  %78 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %78, i64 %80
  %82 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @ntohl(i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct._nls_set_hdr*, %struct._nls_set_hdr** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %87, i64 %89
  %91 = getelementptr inbounds %struct._nls_set_hdr, %struct._nls_set_hdr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @ntohl(i32 %93)
  %95 = add nsw i32 %86, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %151, %64
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %152

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %102, %103
  %105 = sdiv i32 %104, 2
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct._nls_msg_hdr*, %struct._nls_msg_hdr** %11, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %107, i64 %109
  %111 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @ntohl(i32 %113)
  %115 = sub nsw i32 %106, %114
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %101
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = getelementptr inbounds i8, i8* %122, i64 24
  %124 = load %struct._nls_cat_hdr*, %struct._nls_cat_hdr** %10, align 8
  %125 = getelementptr inbounds %struct._nls_cat_hdr, %struct._nls_cat_hdr* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @ntohl(i32 %127)
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %123, i64 %129
  %131 = load %struct._nls_msg_hdr*, %struct._nls_msg_hdr** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %131, i64 %133
  %135 = getelementptr inbounds %struct._nls_msg_hdr, %struct._nls_msg_hdr* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @ntohl(i32 %137)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %130, i64 %139
  store i8* %140, i8** %5, align 8
  br label %168

141:                                              ; preds = %101
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %13, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %16, align 4
  br label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150
  br label %97

152:                                              ; preds = %97
  br label %165

153:                                              ; preds = %47
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %162

159:                                              ; preds = %153
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162
  br label %43

164:                                              ; preds = %43
  br label %165

165:                                              ; preds = %164, %152
  %166 = load i32, i32* @ENOMSG, align 4
  store i32 %166, i32* @errno, align 4
  %167 = load i8*, i8** %9, align 8
  store i8* %167, i8** %5, align 8
  br label %168

168:                                              ; preds = %165, %118, %23
  %169 = load i8*, i8** %5, align 8
  ret i8* %169
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
