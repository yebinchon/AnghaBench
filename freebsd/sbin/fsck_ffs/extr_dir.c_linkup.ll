; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_linkup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dinode = type { i32 }
%struct.inodesc = type { i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"UNREF %s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@preen = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@cursnapshot = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"FILE LINKUP IN SNAPSHOT\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" (RECONNECTED)\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"RECONNECT\00", align 1
@lfdir = common dso_local global i64 0, align 8
@UFS_ROOTINO = common dso_local global i64 0, align 8
@lfname = common dso_local global i8* null, align 8
@DATA = common dso_local global i32 0, align 4
@findino = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"NO lost+found DIRECTORY\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@lfmode = common dso_local global i32 0, align 4
@numdirs = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c" (CREATED)\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"SORRY. CANNOT CREATE lost+found DIRECTORY\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"lost+found IS NOT A DIRECTORY\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"REALLOCATE\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"SORRY. CANNOT CREATE lost+found DIRECTORY\0A\0A\00", align 1
@ALTERED = common dso_local global i32 0, align 4
@ADDR = common dso_local global i32 0, align 4
@pass4check = common dso_local global i32 0, align 4
@DFOUND = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"SORRY. NO lost+found DIRECTORY\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"SORRY. NO SPACE IN lost+found DIRECTORY\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@di_nlink = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"DIR I=%lu CONNECTED. \00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"PARENT WAS I=%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linkup(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.dinode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inodesc, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = call i32 @memset(%struct.inodesc* %11, i32 0, i32 32)
  %20 = load i64, i64* %5, align 8
  %21 = call %union.dinode* @ginode(i64 %20)
  store %union.dinode* %21, %union.dinode** %8, align 8
  %22 = load %union.dinode*, %union.dinode** %8, align 8
  %23 = load i32, i32* @di_mode, align 4
  %24 = call i32 @DIP(%union.dinode* %22, i32 %23)
  %25 = load i32, i32* @IFMT, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @IFDIR, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i64, i64* %5, align 8
  %36 = load %union.dinode*, %union.dinode** %8, align 8
  %37 = call i32 @prtinode(i64 %35, %union.dinode* %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i64, i64* @preen, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load %union.dinode*, %union.dinode** %8, align 8
  %43 = load i32, i32* @di_size, align 4
  %44 = call i32 @DIP(%union.dinode* %42, i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

47:                                               ; preds = %41, %3
  %48 = load i64, i64* @cursnapshot, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @pfatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

52:                                               ; preds = %47
  %53 = load i64, i64* @preen, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %62

57:                                               ; preds = %52
  %58 = call i64 @reply(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i64, i64* @lfdir, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %131

65:                                               ; preds = %62
  %66 = load i64, i64* @UFS_ROOTINO, align 8
  %67 = call %union.dinode* @ginode(i64 %66)
  store %union.dinode* %67, %union.dinode** %8, align 8
  %68 = load i8*, i8** @lfname, align 8
  %69 = call i32 @strdup(i8* %68)
  %70 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 4
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @DATA, align 4
  %72 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @findino, align 4
  %74 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load i64, i64* @UFS_ROOTINO, align 8
  %76 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = load %union.dinode*, %union.dinode** %8, align 8
  %78 = call i32 @ckinode(%union.dinode* %77, %struct.inodesc* %11)
  %79 = load i32, i32* @FOUND, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* @lfdir, align 8
  br label %124

85:                                               ; preds = %65
  %86 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i64, i64* @preen, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = call i64 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %89, %85
  %93 = load i64, i64* @UFS_ROOTINO, align 8
  %94 = load i32, i32* @lfmode, align 4
  %95 = call i64 @allocdir(i64 %93, i64 0, i32 %94)
  store i64 %95, i64* @lfdir, align 8
  %96 = load i64, i64* @lfdir, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %92
  %99 = load i64, i64* @UFS_ROOTINO, align 8
  %100 = load i64, i64* @lfdir, align 8
  %101 = load i8*, i8** @lfname, align 8
  %102 = call i64 @makeentry(i64 %99, i64 %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* @numdirs, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @numdirs, align 4
  %107 = load i64, i64* @preen, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  br label %121

112:                                              ; preds = %98
  %113 = load i64, i64* @lfdir, align 8
  %114 = load i64, i64* @UFS_ROOTINO, align 8
  %115 = call i32 @freedir(i64 %113, i64 %114)
  store i64 0, i64* @lfdir, align 8
  %116 = load i64, i64* @preen, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %112
  br label %121

121:                                              ; preds = %120, %111
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %122, %89
  br label %124

124:                                              ; preds = %123, %82
  %125 = load i64, i64* @lfdir, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 @pfatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %62
  %132 = load i64, i64* @lfdir, align 8
  %133 = call %union.dinode* @ginode(i64 %132)
  store %union.dinode* %133, %union.dinode** %8, align 8
  %134 = load %union.dinode*, %union.dinode** %8, align 8
  %135 = load i32, i32* @di_mode, align 4
  %136 = call i32 @DIP(%union.dinode* %134, i32 %135)
  %137 = load i32, i32* @IFMT, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @IFDIR, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %184

141:                                              ; preds = %131
  %142 = call i32 @pfatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %143 = call i64 @reply(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

146:                                              ; preds = %141
  %147 = load i64, i64* @lfdir, align 8
  store i64 %147, i64* %10, align 8
  %148 = load i64, i64* @UFS_ROOTINO, align 8
  %149 = load i32, i32* @lfmode, align 4
  %150 = call i64 @allocdir(i64 %148, i64 0, i32 %149)
  store i64 %150, i64* @lfdir, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = call i32 @pfatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

154:                                              ; preds = %146
  %155 = load i64, i64* @UFS_ROOTINO, align 8
  %156 = load i8*, i8** @lfname, align 8
  %157 = load i64, i64* @lfdir, align 8
  %158 = call i32 @changeino(i64 %155, i8* %156, i64 %157)
  %159 = load i32, i32* @ALTERED, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = call i32 @pfatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

164:                                              ; preds = %154
  %165 = load %union.dinode*, %union.dinode** %8, align 8
  %166 = call i32 @inodirty(%union.dinode* %165)
  %167 = load i32, i32* @ADDR, align 4
  %168 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 3
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* @pass4check, align 4
  %170 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 2
  store i32 %169, i32* %170, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 1
  store i64 %171, i64* %172, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call %struct.TYPE_2__* @inoinfo(i64 %173)
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  %178 = call i32 @adjust(%struct.inodesc* %11, i64 %177)
  %179 = load i64, i64* %10, align 8
  %180 = call %struct.TYPE_2__* @inoinfo(i64 %179)
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load i64, i64* @lfdir, align 8
  %183 = call %union.dinode* @ginode(i64 %182)
  store %union.dinode* %183, %union.dinode** %8, align 8
  br label %184

184:                                              ; preds = %164, %131
  %185 = load i64, i64* @lfdir, align 8
  %186 = call %struct.TYPE_2__* @inoinfo(i64 %185)
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DFOUND, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = call i32 @pfatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

193:                                              ; preds = %184
  %194 = load i64, i64* %5, align 8
  %195 = call i32 @lftempname(i8* %18, i64 %194)
  %196 = load i64, i64* @lfdir, align 8
  %197 = load i64, i64* %5, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i8*, i8** %7, align 8
  br label %203

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i8* [ %201, %200 ], [ %18, %202 ]
  %205 = call i64 @makeentry(i64 %196, i64 %197, i8* %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = call i32 @pfatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

210:                                              ; preds = %203
  %211 = load i64, i64* %5, align 8
  %212 = call %struct.TYPE_2__* @inoinfo(i64 %211)
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, -1
  store i64 %215, i64* %213, align 8
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %269

218:                                              ; preds = %210
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* @lfdir, align 8
  %221 = call i32 @changeino(i64 %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 %220)
  %222 = load i32, i32* @ALTERED, align 4
  %223 = and i32 %221, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %218
  %226 = load i64, i64* %6, align 8
  %227 = icmp ne i64 %226, -1
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i64, i64* %5, align 8
  %230 = load i64, i64* @lfdir, align 8
  %231 = call i64 @makeentry(i64 %229, i64 %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %232

232:                                              ; preds = %228, %225, %218
  %233 = load i64, i64* @lfdir, align 8
  %234 = call %union.dinode* @ginode(i64 %233)
  store %union.dinode* %234, %union.dinode** %8, align 8
  %235 = load %union.dinode*, %union.dinode** %8, align 8
  %236 = load i32, i32* @di_nlink, align 4
  %237 = load %union.dinode*, %union.dinode** %8, align 8
  %238 = load i32, i32* @di_nlink, align 4
  %239 = call i32 @DIP(%union.dinode* %237, i32 %238)
  %240 = add nsw i32 %239, 1
  %241 = call i32 @DIP_SET(%union.dinode* %235, i32 %236, i32 %240)
  %242 = load %union.dinode*, %union.dinode** %8, align 8
  %243 = call i32 @inodirty(%union.dinode* %242)
  %244 = load i64, i64* @lfdir, align 8
  %245 = call %struct.TYPE_2__* @inoinfo(i64 %244)
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1
  store i64 %248, i64* %246, align 8
  %249 = load i64, i64* %5, align 8
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %250)
  %252 = load i64, i64* %6, align 8
  %253 = icmp ne i64 %252, -1
  br i1 %253, label %254, label %263

254:                                              ; preds = %232
  %255 = load i64, i64* %6, align 8
  %256 = inttoptr i64 %255 to i8*
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %256)
  %258 = load i64, i64* %6, align 8
  %259 = call %struct.TYPE_2__* @inoinfo(i64 %258)
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %261, 1
  store i64 %262, i64* %260, align 8
  br label %263

263:                                              ; preds = %254, %232
  %264 = load i64, i64* @preen, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %263
  br label %269

269:                                              ; preds = %268, %210
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %270

270:                                              ; preds = %269, %207, %191, %162, %152, %145, %127, %60, %50, %46
  %271 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %271)
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #2

declare dso_local %union.dinode* @ginode(i64) #2

declare dso_local i32 @DIP(%union.dinode*, i32) #2

declare dso_local i32 @pwarn(i8*, ...) #2

declare dso_local i32 @prtinode(i64, %union.dinode*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @pfatal(i8*) #2

declare dso_local i64 @reply(i8*) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @ckinode(%union.dinode*, %struct.inodesc*) #2

declare dso_local i64 @allocdir(i64, i64, i32) #2

declare dso_local i64 @makeentry(i64, i64, i8*) #2

declare dso_local i32 @freedir(i64, i64) #2

declare dso_local i32 @changeino(i64, i8*, i64) #2

declare dso_local i32 @inodirty(%union.dinode*) #2

declare dso_local i32 @adjust(%struct.inodesc*, i64) #2

declare dso_local %struct.TYPE_2__* @inoinfo(i64) #2

declare dso_local i32 @lftempname(i8*, i64) #2

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
