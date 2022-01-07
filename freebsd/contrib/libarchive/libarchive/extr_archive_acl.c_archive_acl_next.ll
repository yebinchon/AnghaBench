; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_acl = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_next(%struct.archive* %0, %struct.archive_acl* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.archive*, align 8
  %11 = alloca %struct.archive_acl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  store %struct.archive* %0, %struct.archive** %10, align 8
  store %struct.archive_acl* %1, %struct.archive_acl** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8** %7, i8*** %17, align 8
  %18 = load i8**, i8*** %17, align 8
  store i8* null, i8** %18, align 8
  %19 = load i32*, i32** %16, align 8
  store i32 -1, i32* %19, align 4
  %20 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %21 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %25, i32* %9, align 4
  br label %169

26:                                               ; preds = %8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %26
  %32 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %33 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %78 [
    i32 128, label %35
    i32 130, label %48
    i32 129, label %61
  ]

35:                                               ; preds = %31
  %36 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %37 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 6
  %40 = and i32 %39, 7
  %41 = load i32*, i32** %14, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %15, align 8
  store i32 128, i32* %44, align 4
  %45 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %46 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %45, i32 0, i32 0
  store i32 130, i32* %46, align 8
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %47, i32* %9, align 4
  br label %169

48:                                               ; preds = %31
  %49 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %50 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 3
  %53 = and i32 %52, 7
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %15, align 8
  store i32 130, i32* %57, align 4
  %58 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %59 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %58, i32 0, i32 0
  store i32 129, i32* %59, align 8
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %60, i32* %9, align 4
  br label %169

61:                                               ; preds = %31
  %62 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %63 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 7
  %66 = load i32*, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %15, align 8
  store i32 129, i32* %69, align 4
  %70 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %71 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  %72 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %73 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %76 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %75, i32 0, i32 2
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %76, align 8
  %77 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %77, i32* %9, align 4
  br label %169

78:                                               ; preds = %31
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %26
  br label %81

81:                                               ; preds = %97, %80
  %82 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %83 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = icmp ne %struct.TYPE_2__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %88 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %86, %81
  %96 = phi i1 [ false, %81 ], [ %94, %86 ]
  br i1 %96, label %97, label %105

97:                                               ; preds = %95
  %98 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %99 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %104 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %103, i32 0, i32 2
  store %struct.TYPE_2__* %102, %struct.TYPE_2__** %104, align 8
  br label %81

105:                                              ; preds = %95
  %106 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %107 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = icmp eq %struct.TYPE_2__* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %112 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32*, i32** %13, align 8
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %14, align 8
  store i32 0, i32* %114, align 4
  %115 = load i32*, i32** %15, align 8
  store i32 0, i32* %115, align 4
  %116 = load i32*, i32** %16, align 8
  store i32 -1, i32* %116, align 4
  %117 = load i8**, i8*** %17, align 8
  store i8* null, i8** %117, align 8
  %118 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %118, i32* %9, align 4
  br label %169

119:                                              ; preds = %105
  %120 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %121 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %127 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %14, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %133 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %15, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %139 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %16, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.archive*, %struct.archive** %10, align 8
  %145 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %146 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 5
  %149 = load i8**, i8*** %17, align 8
  %150 = call i64 @archive_mstring_get_mbs(%struct.archive* %144, i32* %148, i8** %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %119
  %153 = load i64, i64* @errno, align 8
  %154 = load i64, i64* @ENOMEM, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %157, i32* %9, align 4
  br label %169

158:                                              ; preds = %152
  %159 = load i8**, i8*** %17, align 8
  store i8* null, i8** %159, align 8
  br label %160

160:                                              ; preds = %158, %119
  %161 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %162 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load %struct.archive_acl*, %struct.archive_acl** %11, align 8
  %167 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %166, i32 0, i32 2
  store %struct.TYPE_2__* %165, %struct.TYPE_2__** %167, align 8
  %168 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %160, %156, %110, %61, %48, %35, %24
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i64 @archive_mstring_get_mbs(%struct.archive*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
