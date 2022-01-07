; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_exttime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_exttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar = type { i64, i64, i64, i64, i8*, i8*, i8*, i8* }
%struct.tm = type { i32 }

@NS_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rar*, i8*)* @read_exttime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_exttime(i8* %0, %struct.rar* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rar*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tm*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.rar* %1, %struct.rar** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %155

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @archive_le16dec(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %5, align 8
  store i32 3, i32* %14, align 4
  br label %28

28:                                               ; preds = %151, %23
  %29 = load i32, i32* %14, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %154

31:                                               ; preds = %28
  store i8* null, i8** %16, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.rar*, %struct.rar** %6, align 8
  %36 = getelementptr inbounds %struct.rar, %struct.rar* %35, i32 0, i32 7
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %16, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %40, 4
  %42 = lshr i32 %39, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %150

46:                                               ; preds = %38
  %47 = load i8*, i8** %16, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ugt i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %155

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @archive_le32dec(i8* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i8* @get_time(i32 %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %55, %46
  store i32 0, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 3
  store i32 %64, i32* %12, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ugt i8* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %155

72:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %87, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %10, align 4
  %83 = lshr i32 %82, 8
  %84 = or i32 %81, %83
  store i32 %84, i32* %10, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %73

90:                                               ; preds = %73
  %91 = call %struct.tm* @localtime(i8** %16)
  store %struct.tm* %91, %struct.tm** %15, align 8
  %92 = load %struct.tm*, %struct.tm** %15, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @NS_UNIT, align 4
  %97 = udiv i32 %95, %96
  %98 = add i32 %94, %97
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %17, align 8
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %90
  %104 = load %struct.tm*, %struct.tm** %15, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.tm*, %struct.tm** %15, align 8
  %109 = call i8* @mktime(%struct.tm* %108)
  store i8* %109, i8** %16, align 8
  br label %110

110:                                              ; preds = %103, %90
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i8*, i8** %16, align 8
  %115 = load %struct.rar*, %struct.rar** %6, align 8
  %116 = getelementptr inbounds %struct.rar, %struct.rar* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.rar*, %struct.rar** %6, align 8
  %119 = getelementptr inbounds %struct.rar, %struct.rar* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %149

120:                                              ; preds = %110
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i8*, i8** %16, align 8
  %125 = load %struct.rar*, %struct.rar** %6, align 8
  %126 = getelementptr inbounds %struct.rar, %struct.rar* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load %struct.rar*, %struct.rar** %6, align 8
  %129 = getelementptr inbounds %struct.rar, %struct.rar* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %148

130:                                              ; preds = %120
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i8*, i8** %16, align 8
  %135 = load %struct.rar*, %struct.rar** %6, align 8
  %136 = getelementptr inbounds %struct.rar, %struct.rar* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.rar*, %struct.rar** %6, align 8
  %139 = getelementptr inbounds %struct.rar, %struct.rar* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  br label %147

140:                                              ; preds = %130
  %141 = load i8*, i8** %16, align 8
  %142 = load %struct.rar*, %struct.rar** %6, align 8
  %143 = getelementptr inbounds %struct.rar, %struct.rar* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load %struct.rar*, %struct.rar** %6, align 8
  %146 = getelementptr inbounds %struct.rar, %struct.rar* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %140, %133
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148, %113
  br label %150

150:                                              ; preds = %149, %38
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %14, align 4
  br label %28

154:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %71, %54, %22
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local i32 @archive_le32dec(i8*) #1

declare dso_local i8* @get_time(i32) #1

declare dso_local %struct.tm* @localtime(i8**) #1

declare dso_local i8* @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
