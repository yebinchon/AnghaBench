; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvhdr = type { i32, i32 }

@NV_ORDER_MASK = common dso_local global i32 0, align 4
@NV_ORDER_HOST = common dso_local global i32 0, align 4
@NV_ORDER_NETWORK = common dso_local global i32 0, align 4
@NV_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid condition\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unrecognized type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvhdr*, i32)* @nv_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swap(%struct.nvhdr* %0, i32 %1) #0 {
  %3 = alloca %struct.nvhdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.nvhdr* %0, %struct.nvhdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %10 = call i8* @NVH_DATA(%struct.nvhdr* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %15 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NV_ORDER_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @NV_ORDER_HOST, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %174

22:                                               ; preds = %13
  %23 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %24 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le32toh(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %29 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %32 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* @NV_ORDER_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %39 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @NV_ORDER_HOST, align 4
  %43 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %44 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %81

47:                                               ; preds = %2
  %48 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %49 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NV_ORDER_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @NV_ORDER_NETWORK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %174

56:                                               ; preds = %47
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %59 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %64 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @htole32(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %69 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @NV_ORDER_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %73 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @NV_ORDER_NETWORK, align 4
  %77 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %78 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %56, %22
  store i64 0, i64* %8, align 8
  %82 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %83 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NV_TYPE_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %172 [
    i32 138, label %87
    i32 129, label %87
    i32 137, label %87
    i32 128, label %87
    i32 144, label %88
    i32 135, label %88
    i32 143, label %88
    i32 134, label %88
    i32 142, label %93
    i32 133, label %93
    i32 141, label %93
    i32 132, label %93
    i32 140, label %98
    i32 131, label %98
    i32 139, label %98
    i32 130, label %98
    i32 136, label %171
  ]

87:                                               ; preds = %81, %81, %81, %81
  br label %174

88:                                               ; preds = %81, %81, %81, %81
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i64 2, i64* %8, align 8
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %81, %81, %81, %81, %92
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i64 4, i64* %8, align 8
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %81, %81, %81, %81, %97
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i64 8, i64* %8, align 8
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i8*, i8** %5, align 8
  store i8* %103, i8** %7, align 8
  br label %104

104:                                              ; preds = %166, %102
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ult i8* %105, %106
  br i1 %107, label %108, label %170

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i64, i64* %8, align 8
  switch i64 %112, label %135 [
    i64 2, label %113
    i64 4, label %120
    i64 8, label %128
  ]

113:                                              ; preds = %111
  %114 = load i8*, i8** %7, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le16toh(i32 %116)
  %118 = load i8*, i8** %7, align 8
  %119 = bitcast i8* %118 to i32*
  store i32 %117, i32* %119, align 4
  br label %137

120:                                              ; preds = %111
  %121 = load i8*, i8** %7, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le32toh(i32 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to i32*
  store i32 %125, i32* %127, align 4
  br label %137

128:                                              ; preds = %111
  %129 = load i8*, i8** %7, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le64toh(i32 %131)
  %133 = load i8*, i8** %7, align 8
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 4
  br label %137

135:                                              ; preds = %111
  %136 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %128, %120, %113
  br label %165

138:                                              ; preds = %108
  %139 = load i64, i64* %8, align 8
  switch i64 %139, label %162 [
    i64 2, label %140
    i64 4, label %147
    i64 8, label %155
  ]

140:                                              ; preds = %138
  %141 = load i8*, i8** %7, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @htole16(i32 %143)
  %145 = load i8*, i8** %7, align 8
  %146 = bitcast i8* %145 to i32*
  store i32 %144, i32* %146, align 4
  br label %164

147:                                              ; preds = %138
  %148 = load i8*, i8** %7, align 8
  %149 = bitcast i8* %148 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @htole32(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i8*, i8** %7, align 8
  %154 = bitcast i8* %153 to i32*
  store i32 %152, i32* %154, align 4
  br label %164

155:                                              ; preds = %138
  %156 = load i8*, i8** %7, align 8
  %157 = bitcast i8* %156 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @htole64(i32 %158)
  %160 = load i8*, i8** %7, align 8
  %161 = bitcast i8* %160 to i32*
  store i32 %159, i32* %161, align 4
  br label %164

162:                                              ; preds = %138
  %163 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %155, %147, %140
  br label %165

165:                                              ; preds = %164, %137
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %8, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 %167
  store i8* %169, i8** %7, align 8
  br label %104

170:                                              ; preds = %104
  br label %174

171:                                              ; preds = %81
  br label %174

172:                                              ; preds = %81
  %173 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %21, %55, %172, %171, %170, %87
  ret void
}

declare dso_local i8* @NVH_DATA(%struct.nvhdr*) #1

declare dso_local i8* @le32toh(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
