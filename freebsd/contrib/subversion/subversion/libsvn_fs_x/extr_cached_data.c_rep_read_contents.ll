; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_rep_read_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_rep_read_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32*, i32, i32, %struct.TYPE_13__*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Checksum mismatch while reading representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @rep_read_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_read_contents(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @get_contents_from_fulltext(i64* %9, %struct.TYPE_16__* %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %4, align 8
  br label %188

29:                                               ; preds = %19
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 15
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 14
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 13
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 12
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 11
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @build_rep_list(i32* %39, i32* %41, i32* %43, %struct.TYPE_13__* %46, i32* %48, i32 %51, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @skip_contents(%struct.TYPE_16__* %57, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %37, %32
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32*, i32** %7, align 8
  store i32 0, i32* %72, align 4
  br label %79

73:                                               ; preds = %63
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @get_contents_from_windows(%struct.TYPE_16__* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %73, %71
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @svn_stringbuf_appendbytes(i32* %87, i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %84, %79
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %152, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @svn_checksum_update(i32 %100, i8* %101, i32 %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %97
  %121 = load i32, i32* @svn_checksum_md5, align 4
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load i64, i64* @TRUE, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 7
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @svn_checksum_final(%struct.TYPE_15__** %10, i32 %132, i32 %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %139 = call i32 @svn_checksum_match(%struct.TYPE_15__* %138, %struct.TYPE_15__* %11)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %120
  %142 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %148 = call i32 @svn_checksum_mismatch_err(%struct.TYPE_15__* %11, %struct.TYPE_15__* %143, i32 %146, i32 %147)
  %149 = call i32* @svn_error_create(i32 %142, i32 %148, i32* null)
  store i32* %149, i32** %4, align 8
  br label %188

150:                                              ; preds = %120
  br label %151

151:                                              ; preds = %150, %97
  br label %152

152:                                              ; preds = %151, %92
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %186

160:                                              ; preds = %152
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %186

165:                                              ; preds = %160
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  store %struct.TYPE_14__* %170, %struct.TYPE_14__** %12, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @svn_cache__set(i32 %173, i32* %175, i32* %178, i32 %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  store i32* null, i32** %185, align 8
  br label %186

186:                                              ; preds = %165, %160, %152
  %187 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %187, i32** %4, align 8
  br label %188

188:                                              ; preds = %186, %141, %27
  %189 = load i32*, i32** %4, align 8
  ret i32* %189
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_contents_from_fulltext(i64*, %struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @build_rep_list(i32*, i32*, i32*, %struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @skip_contents(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_contents_from_windows(%struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_update(i32, i8*, i32) #1

declare dso_local i32 @svn_checksum_final(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32 @svn_checksum_mismatch_err(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cache__set(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
