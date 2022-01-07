; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_child_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_program.c_child_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32, %struct.program_filter* }
%struct.program_filter = type { i32, i32 }

@SSIZE_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i8*, i64)* @child_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_read(%struct.archive_read_filter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.program_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %14 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %13, i32 0, i32 1
  %15 = load %struct.program_filter*, %struct.program_filter** %14, align 8
  store %struct.program_filter* %15, %struct.program_filter** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @SSIZE_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @SSIZE_MAX, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %169, %106, %75, %23
  br label %27

27:                                               ; preds = %41, %26
  %28 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %29 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @read(i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %27, label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %170

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EPIPE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %48
  %59 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %60 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %61 = call i32 @child_stop(%struct.archive_read_filter* %59, %struct.program_filter* %60)
  store i32 %61, i32* %4, align 4
  br label %170

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EAGAIN, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %170

70:                                               ; preds = %65, %62
  %71 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %72 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %77 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %80 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__archive_check_child(i32 %78, i32 %81)
  br label %26

83:                                               ; preds = %70
  %84 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %85 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @__archive_read_filter_ahead(i32 %86, i32 1, i32* %11)
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %92 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @close(i32 %93)
  %95 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %96 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 4
  %97 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %98 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @F_SETFL, align 4
  %101 = call i32 @fcntl(i32 %99, i32 %100, i32 0)
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %170

106:                                              ; preds = %90
  br label %26

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %122, %107
  %109 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %110 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @write(i32 %111, i8* %112, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINTR, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  br i1 %123, label %108, label %124

124:                                              ; preds = %122
  %125 = load i32, i32* %9, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %129 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @__archive_read_filter_consume(i32 %130, i32 %131)
  br label %169

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @EAGAIN, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %142 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %145 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @__archive_check_child(i32 %143, i32 %146)
  br label %168

148:                                              ; preds = %136, %133
  %149 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %150 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @close(i32 %151)
  %153 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %154 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %153, i32 0, i32 0
  store i32 -1, i32* %154, align 4
  %155 = load %struct.program_filter*, %struct.program_filter** %8, align 8
  %156 = getelementptr inbounds %struct.program_filter, %struct.program_filter* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @F_SETFL, align 4
  %159 = call i32 @fcntl(i32 %157, i32 %158, i32 0)
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %167

162:                                              ; preds = %148
  %163 = load i64, i64* @errno, align 8
  %164 = load i64, i64* @EPIPE, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 -1, i32* %4, align 4
  br label %170

167:                                              ; preds = %162, %148
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %127
  br label %26

170:                                              ; preds = %166, %104, %69, %58, %46
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @child_stop(%struct.archive_read_filter*, %struct.program_filter*) #1

declare dso_local i32 @__archive_check_child(i32, i32) #1

declare dso_local i8* @__archive_read_filter_ahead(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @__archive_read_filter_consume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
