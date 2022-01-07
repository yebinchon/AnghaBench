; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_dumpsymtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_dumpsymtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.entry = type { i8*, i64, %struct.entry*, %struct.entry*, %struct.entry*, %struct.entry*, %struct.entry*, i32 }
%struct.symtableheader = type { i64, i64, i64, i64, i32, i32, i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checkpointing the restore\0A\00", align 1
@Nflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"fopen: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"cannot create save file %s for symbol table\0A\00", align 1
@UFS_WINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@entrytblsize = common dso_local global i64 0, align 8
@entry = common dso_local global %struct.TYPE_2__** null, align 8
@dumptime = common dso_local global i32 0, align 4
@dumpdate = common dso_local global i32 0, align 4
@ntrec = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"fwrite: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"output error to file %s writing symbol table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpsymtable(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.entry*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.entry, align 8
  %9 = alloca %struct.entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.symtableheader, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @vprintf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @Nflag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %228

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %12, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = call i32 @done(i32 1)
  br label %31

31:                                               ; preds = %23, %19
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @clearerr(i32* %32)
  %34 = load i64, i64* @UFS_WINO, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %65, %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @maxino, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = call %struct.entry* @lookupino(i64 %40)
  store %struct.entry* %41, %struct.entry** %5, align 8
  br label %42

42:                                               ; preds = %60, %39
  %43 = load %struct.entry*, %struct.entry** %5, align 8
  %44 = icmp ne %struct.entry* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %10, align 8
  %48 = load %struct.entry*, %struct.entry** %5, align 8
  %49 = getelementptr inbounds %struct.entry, %struct.entry* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load %struct.entry*, %struct.entry** %5, align 8
  %51 = getelementptr inbounds %struct.entry, %struct.entry* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.entry*, %struct.entry** %5, align 8
  %54 = getelementptr inbounds %struct.entry, %struct.entry* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @allocsize(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @fwrite(i8* %52, i32 1, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %45
  %61 = load %struct.entry*, %struct.entry** %5, align 8
  %62 = getelementptr inbounds %struct.entry, %struct.entry* %61, i32 0, i32 5
  %63 = load %struct.entry*, %struct.entry** %62, align 8
  store %struct.entry* %63, %struct.entry** %5, align 8
  br label %42

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %35

68:                                               ; preds = %35
  store %struct.entry* %8, %struct.entry** %6, align 8
  store i64 0, i64* %11, align 8
  %69 = load i64, i64* @UFS_WINO, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %167, %68
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @maxino, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %170

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = call %struct.entry* @lookupino(i64 %75)
  store %struct.entry* %76, %struct.entry** %5, align 8
  br label %77

77:                                               ; preds = %162, %74
  %78 = load %struct.entry*, %struct.entry** %5, align 8
  %79 = icmp ne %struct.entry* %78, null
  br i1 %79, label %80, label %166

80:                                               ; preds = %77
  %81 = load %struct.entry*, %struct.entry** %6, align 8
  %82 = load %struct.entry*, %struct.entry** %5, align 8
  %83 = call i32 @memmove(%struct.entry* %81, %struct.entry* %82, i64 64)
  %84 = load i64, i64* %11, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.entry*, %struct.entry** %6, align 8
  %87 = getelementptr inbounds %struct.entry, %struct.entry* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.entry*, %struct.entry** %5, align 8
  %89 = getelementptr inbounds %struct.entry, %struct.entry* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @allocsize(i32 %90)
  %92 = load i64, i64* %11, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %11, align 8
  %94 = load %struct.entry*, %struct.entry** %5, align 8
  %95 = getelementptr inbounds %struct.entry, %struct.entry* %94, i32 0, i32 6
  %96 = load %struct.entry*, %struct.entry** %95, align 8
  %97 = getelementptr inbounds %struct.entry, %struct.entry* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.entry*
  %100 = load %struct.entry*, %struct.entry** %6, align 8
  %101 = getelementptr inbounds %struct.entry, %struct.entry* %100, i32 0, i32 6
  store %struct.entry* %99, %struct.entry** %101, align 8
  %102 = load %struct.entry*, %struct.entry** %5, align 8
  %103 = getelementptr inbounds %struct.entry, %struct.entry* %102, i32 0, i32 5
  %104 = load %struct.entry*, %struct.entry** %103, align 8
  %105 = icmp ne %struct.entry* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %80
  %107 = load %struct.entry*, %struct.entry** %5, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 5
  %109 = load %struct.entry*, %struct.entry** %108, align 8
  %110 = getelementptr inbounds %struct.entry, %struct.entry* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.entry*
  %113 = load %struct.entry*, %struct.entry** %6, align 8
  %114 = getelementptr inbounds %struct.entry, %struct.entry* %113, i32 0, i32 5
  store %struct.entry* %112, %struct.entry** %114, align 8
  br label %115

115:                                              ; preds = %106, %80
  %116 = load %struct.entry*, %struct.entry** %5, align 8
  %117 = getelementptr inbounds %struct.entry, %struct.entry* %116, i32 0, i32 4
  %118 = load %struct.entry*, %struct.entry** %117, align 8
  %119 = icmp ne %struct.entry* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.entry*, %struct.entry** %5, align 8
  %122 = getelementptr inbounds %struct.entry, %struct.entry* %121, i32 0, i32 4
  %123 = load %struct.entry*, %struct.entry** %122, align 8
  %124 = getelementptr inbounds %struct.entry, %struct.entry* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.entry*
  %127 = load %struct.entry*, %struct.entry** %6, align 8
  %128 = getelementptr inbounds %struct.entry, %struct.entry* %127, i32 0, i32 4
  store %struct.entry* %126, %struct.entry** %128, align 8
  br label %129

129:                                              ; preds = %120, %115
  %130 = load %struct.entry*, %struct.entry** %5, align 8
  %131 = getelementptr inbounds %struct.entry, %struct.entry* %130, i32 0, i32 3
  %132 = load %struct.entry*, %struct.entry** %131, align 8
  %133 = icmp ne %struct.entry* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.entry*, %struct.entry** %5, align 8
  %136 = getelementptr inbounds %struct.entry, %struct.entry* %135, i32 0, i32 3
  %137 = load %struct.entry*, %struct.entry** %136, align 8
  %138 = getelementptr inbounds %struct.entry, %struct.entry* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to %struct.entry*
  %141 = load %struct.entry*, %struct.entry** %6, align 8
  %142 = getelementptr inbounds %struct.entry, %struct.entry* %141, i32 0, i32 3
  store %struct.entry* %140, %struct.entry** %142, align 8
  br label %143

143:                                              ; preds = %134, %129
  %144 = load %struct.entry*, %struct.entry** %5, align 8
  %145 = getelementptr inbounds %struct.entry, %struct.entry* %144, i32 0, i32 2
  %146 = load %struct.entry*, %struct.entry** %145, align 8
  %147 = icmp ne %struct.entry* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.entry*, %struct.entry** %5, align 8
  %150 = getelementptr inbounds %struct.entry, %struct.entry* %149, i32 0, i32 2
  %151 = load %struct.entry*, %struct.entry** %150, align 8
  %152 = getelementptr inbounds %struct.entry, %struct.entry* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to %struct.entry*
  %155 = load %struct.entry*, %struct.entry** %6, align 8
  %156 = getelementptr inbounds %struct.entry, %struct.entry* %155, i32 0, i32 2
  store %struct.entry* %154, %struct.entry** %156, align 8
  br label %157

157:                                              ; preds = %148, %143
  %158 = load %struct.entry*, %struct.entry** %6, align 8
  %159 = bitcast %struct.entry* %158 to i8*
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @fwrite(i8* %159, i32 64, i32 1, i32* %160)
  br label %162

162:                                              ; preds = %157
  %163 = load %struct.entry*, %struct.entry** %5, align 8
  %164 = getelementptr inbounds %struct.entry, %struct.entry* %163, i32 0, i32 5
  %165 = load %struct.entry*, %struct.entry** %164, align 8
  store %struct.entry* %165, %struct.entry** %5, align 8
  br label %77

166:                                              ; preds = %77
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %7, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %7, align 8
  br label %70

170:                                              ; preds = %70
  store i64 0, i64* %7, align 8
  br label %171

171:                                              ; preds = %194, %170
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @entrytblsize, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %171
  %176 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @entry, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %176, i64 %177
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = icmp eq %struct.TYPE_2__* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store %struct.entry* null, %struct.entry** %9, align 8
  br label %190

182:                                              ; preds = %175
  %183 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @entry, align 8
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %183, i64 %184
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to %struct.entry*
  store %struct.entry* %189, %struct.entry** %9, align 8
  br label %190

190:                                              ; preds = %182, %181
  %191 = bitcast %struct.entry** %9 to i8*
  %192 = load i32*, i32** %12, align 8
  %193 = call i32 @fwrite(i8* %191, i32 8, i32 1, i32* %192)
  br label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %7, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %7, align 8
  br label %171

197:                                              ; preds = %171
  %198 = load i64, i64* %4, align 8
  %199 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 0
  store i64 %198, i64* %199, align 8
  %200 = load i64, i64* @maxino, align 8
  %201 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 1
  store i64 %200, i64* %201, align 8
  %202 = load i64, i64* @entrytblsize, align 8
  %203 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 2
  store i64 %202, i64* %203, align 8
  %204 = load i64, i64* %11, align 8
  %205 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 3
  store i64 %204, i64* %205, align 8
  %206 = load i32, i32* @dumptime, align 4
  %207 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 6
  store i32 %206, i32* %207, align 8
  %208 = load i32, i32* @dumpdate, align 4
  %209 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 5
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* @ntrec, align 4
  %211 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %13, i32 0, i32 4
  store i32 %210, i32* %211, align 8
  %212 = bitcast %struct.symtableheader* %13 to i8*
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @fwrite(i8* %212, i32 48, i32 1, i32* %213)
  %215 = load i32*, i32** %12, align 8
  %216 = call i64 @ferror(i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %197
  %219 = load i32, i32* @stderr, align 4
  %220 = load i32, i32* @errno, align 4
  %221 = call i8* @strerror(i32 %220)
  %222 = call i32 @fprintf(i32 %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %221)
  %223 = load i8*, i8** %3, align 8
  %224 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %218, %197
  %226 = load i32*, i32** %12, align 8
  %227 = call i32 @fclose(i32* %226)
  br label %228

228:                                              ; preds = %225, %18
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @done(i32) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i64 @allocsize(i32) #1

declare dso_local i32 @memmove(%struct.entry*, %struct.entry*, i64) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
