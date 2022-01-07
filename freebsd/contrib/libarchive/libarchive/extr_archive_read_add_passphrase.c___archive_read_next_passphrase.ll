; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_add_passphrase.c___archive_read_next_passphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_add_passphrase.c___archive_read_next_passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8* (i32*, i32)*, i32, %struct.archive_read_passphrase* }
%struct.archive_read_passphrase = type { i8*, %struct.archive_read_passphrase* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__archive_read_next_passphrase(%struct.archive_read* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.archive_read_passphrase*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %13 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %15, align 8
  store %struct.archive_read_passphrase* %16, %struct.archive_read_passphrase** %4, align 8
  br label %17

17:                                               ; preds = %23, %12
  %18 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %19 = icmp ne %struct.archive_read_passphrase* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %25 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %24, i32 0, i32 1
  %26 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %25, align 8
  store %struct.archive_read_passphrase* %26, %struct.archive_read_passphrase** %4, align 8
  br label %17

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %34, align 8
  store %struct.archive_read_passphrase* %35, %struct.archive_read_passphrase** %4, align 8
  br label %84

36:                                               ; preds = %1
  %37 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %38 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %49 = call %struct.archive_read_passphrase* @remove_passphrases_from_head(%struct.archive_read* %48)
  store %struct.archive_read_passphrase* %49, %struct.archive_read_passphrase** %4, align 8
  %50 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %51 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %52 = call i32 @add_passphrase_to_tail(%struct.archive_read* %50, %struct.archive_read_passphrase* %51)
  %53 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %54 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %55, align 8
  store %struct.archive_read_passphrase* %56, %struct.archive_read_passphrase** %4, align 8
  br label %83

57:                                               ; preds = %36
  %58 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %59 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %65 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %69, align 8
  %71 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %70, i32 0, i32 1
  %72 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %71, align 8
  %73 = icmp ne %struct.archive_read_passphrase* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %76 = call %struct.archive_read_passphrase* @remove_passphrases_from_head(%struct.archive_read* %75)
  store %struct.archive_read_passphrase* %76, %struct.archive_read_passphrase** %4, align 8
  %77 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %78 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %79 = call i32 @add_passphrase_to_tail(%struct.archive_read* %77, %struct.archive_read_passphrase* %78)
  br label %80

80:                                               ; preds = %74, %63
  store %struct.archive_read_passphrase* null, %struct.archive_read_passphrase** %4, align 8
  br label %82

81:                                               ; preds = %57
  store %struct.archive_read_passphrase* null, %struct.archive_read_passphrase** %4, align 8
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %27
  %85 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %86 = icmp ne %struct.archive_read_passphrase* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %89 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %5, align 8
  br label %128

91:                                               ; preds = %84
  %92 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %93 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i8* (i32*, i32)*, i8* (i32*, i32)** %94, align 8
  %96 = icmp ne i8* (i32*, i32)* %95, null
  br i1 %96, label %97, label %126

97:                                               ; preds = %91
  %98 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %99 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i8* (i32*, i32)*, i8* (i32*, i32)** %100, align 8
  %102 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %103 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %102, i32 0, i32 1
  %104 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %105 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* %101(i32* %103, i32 %107)
  store i8* %108, i8** %5, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %97
  %112 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = call %struct.archive_read_passphrase* @new_read_passphrase(%struct.archive_read* %112, i8* %113)
  store %struct.archive_read_passphrase* %114, %struct.archive_read_passphrase** %4, align 8
  %115 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %116 = icmp eq %struct.archive_read_passphrase* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i8* null, i8** %2, align 8
  br label %130

118:                                              ; preds = %111
  %119 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %120 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %121 = call i32 @insert_passphrase_to_head(%struct.archive_read* %119, %struct.archive_read_passphrase* %120)
  %122 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %123 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %118, %97
  br label %127

126:                                              ; preds = %91
  store i8* null, i8** %5, align 8
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %87
  %129 = load i8*, i8** %5, align 8
  store i8* %129, i8** %2, align 8
  br label %130

130:                                              ; preds = %128, %117
  %131 = load i8*, i8** %2, align 8
  ret i8* %131
}

declare dso_local %struct.archive_read_passphrase* @remove_passphrases_from_head(%struct.archive_read*) #1

declare dso_local i32 @add_passphrase_to_tail(%struct.archive_read*, %struct.archive_read_passphrase*) #1

declare dso_local %struct.archive_read_passphrase* @new_read_passphrase(%struct.archive_read*, i8*) #1

declare dso_local i32 @insert_passphrase_to_head(%struct.archive_read*, %struct.archive_read_passphrase*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
